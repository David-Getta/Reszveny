// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
  String get labelYieldOnCost => 'Tuotto hankintahinnalle';

  @override
  String get labelDividendGrowth5y => 'Osingon kasvu (5 v)';

  @override
  String get dividendNone =>
      'Osinkoa ei ole maksettu viimeisten 12 kuukauden aikana.';

  @override
  String get dividendOnYourShares => 'Osakkeillesi vuodessa';

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
    return 'Paina $shortcut missä tahansa, niin WhatStock avautuu.';
  }

  @override
  String get trayOpen => 'Avaa WhatStock';

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
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

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
      'Kuvantunnistus, reaaliaikaiset tiedot, kaaviot, suosikit ja kaikki 120 kieltä sisältyvät jokaiseen pakettiin. Kiintiö koskee tekoälyanalyyseja.';

  @override
  String get searchLanguages => 'Hae kieliä…';

  @override
  String get noLanguageMatch => 'Ei vastaavia kieliä.';

  @override
  String get aiSettings => 'Tekoälyanalyysi';

  @override
  String get aiLength => 'Pituus';

  @override
  String get aiDepthBrief => 'Lyhyt';

  @override
  String get aiDepthStandard => 'Vakio';

  @override
  String get aiDepthDeep => 'Syvällinen';

  @override
  String get aiDepthBriefDesc => 'Olennaisin, nopeasti.';

  @override
  String get aiDepthStandardDesc => 'Täysi raportti kaikkine osioineen.';

  @override
  String get aiDepthDeepDesc =>
      'Enemmän verkkohakuja, vertailu kilpailijoihin ja syvällisemmät yksityiskohdat.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Noin $min–$max sanaa';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kuluttaa $count analyysia',
      one: 'kuluttaa 1 analyysin',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Lukijan taso';

  @override
  String get aiReaderBeginner => 'Aloittelija';

  @override
  String get aiReaderExperienced => 'Kokenut';

  @override
  String get aiReaderBeginnerDesc =>
      'Selkeää kieltä; jokainen termi selitetään.';

  @override
  String get aiReaderExperiencedDesc =>
      'Tiiviimpää tekstiä vakiintuneella rahoitusalan terminologialla.';

  @override
  String get aiCounterArgument => 'Vahvin vasta-argumentti';

  @override
  String get aiCounterArgumentDesc =>
      'Yhteenveto päättyy aina vahvimpaan perusteluun omaa johtopäätöstään vastaan.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Enintään $count verkkohakua analyysia kohden paketillasi',
      one: 'Enintään 1 verkkohaku analyysia kohden paketillasi',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Vakiopituus paketeittain: Normaali $normal, Pro $pro, Max $max, Ultra $ultra. Lyhyt käyttää 2 vähemmän, Syvällinen 2 enemmän.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'enintään $count verkkohakua',
      one: 'enintään 1 verkkohaku',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count verkkohakua analyysia kohden',
      one: '1 verkkohaku analyysia kohden',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Tämä pituus vaatii $needed analyysia, mutta jäljellä on vain $left. Valitse lyhyempi pituus Asetuksista tai hanki lisää analyyseja.';
  }

  @override
  String get outlookMarketMood => 'Markkinatunnelma';

  @override
  String get moodVeryPessimistic => 'Erittäin pessimistinen';

  @override
  String get moodPessimistic => 'Pessimistinen';

  @override
  String get moodNeutral => 'Neutraali';

  @override
  String get moodOptimistic => 'Optimistinen';

  @override
  String get moodVeryOptimistic => 'Erittäin optimistinen';

  @override
  String get scenarioBull => 'Optimistinen skenaario';

  @override
  String get scenarioBase => 'Perusskenaario';

  @override
  String get scenarioBear => 'Pessimistinen skenaario';

  @override
  String outlookCurrentPrice(String price) {
    return 'Nykyinen kurssi: $price';
  }

  @override
  String get outlookKeyLevels => 'Keskeiset tasot';

  @override
  String get keyLevelSupport => 'Tuki';

  @override
  String get keyLevelResistance => 'Vastus';

  @override
  String get keyLevelAnchor => 'Ankkuritaso';

  @override
  String get upcomingEvents => 'Tulevat tapahtumat';

  @override
  String get outlookChartNote =>
      'Suuntaa antavat vaihteluvälit; todennäköisyydet ovat karkeita arvioita, eivät ennusteita.';

  @override
  String get accountTitle => 'Tili';

  @override
  String get signIn => 'Kirjaudu sisään';

  @override
  String get signOut => 'Kirjaudu ulos';

  @override
  String get notSignedIn => 'Et ole kirjautunut';

  @override
  String get accountBenefit =>
      'Kirjaudu sisään, niin tilauksesi toimii kaikilla laitteillasi.';

  @override
  String get accountSyncedNote =>
      'Tilauksesi ja jäljellä olevat analyysisi ovat samat kaikilla laitteilla.';

  @override
  String get signInTitle => 'Kirjaudu WhatStockiin';

  @override
  String get emailLabel => 'Sähköpostiosoite';

  @override
  String get continueWithEmail => 'Jatka sähköpostilla';

  @override
  String codeSentTo(String email) {
    return 'Lähetimme 6-numeroisen koodin osoitteeseen $email. Se on voimassa 10 minuuttia.';
  }

  @override
  String get codeLabel => 'Kirjautumiskoodi';

  @override
  String get resendCode => 'Lähetä uusi koodi';

  @override
  String get useDifferentEmail => 'Käytä toista sähköpostiosoitetta';

  @override
  String get errInvalidCode => 'Koodi on väärä tai vanhentunut.';

  @override
  String get errInvalidEmail => 'Anna kelvollinen sähköpostiosoite.';

  @override
  String get errSignInFailed =>
      'Kirjautuminen epäonnistui. Tarkista yhteytesi ja yritä uudelleen.';

  @override
  String get checkoutWaiting =>
      'Viimeistele maksu selaimessa. Sovellus päivittyy automaattisesti, kun maksu on valmis.';

  @override
  String get paymentViaStripe =>
      'Turvallinen maksu selaimessa Stripen kautta. Voit perua milloin tahansa.';

  @override
  String get paymentViaStore =>
      'Laskutetaan App Store- tai Google Play -tilisi kautta. Voit perua milloin tahansa kaupan asetuksista.';

  @override
  String get keySpace => 'Välilyönti';

  @override
  String get doubleOptionTitle => 'Optio-näppäimen kaksoispainallus';

  @override
  String get doubleOptionSubtitle =>
      'WhatStock avautuu myös, kun painat Optio-näppäintä nopeasti kahdesti.';

  @override
  String get doubleOptionPermission =>
      'Jotta tämä toimisi myös muissa sovelluksissa, salli WhatStock kohdassa Järjestelmäasetukset → Tietosuoja ja suojaus → Syötteen valvonta ja avaa sovellus sitten uudelleen.';

  @override
  String get openSystemSettings => 'Avaa Järjestelmäasetukset';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Paina missä tahansa $shortcut tai Optio-näppäintä kahdesti, niin WhatStock avautuu.';
  }

  @override
  String get scenarioMostLikely => 'Todennäköisin';

  @override
  String get longTermToday => 'Tänään';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years vuotta',
      one: '1 vuosi',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range vuodessa';
  }

  @override
  String longTermLikely(String price) {
    return 'todennäköisin $price';
  }

  @override
  String get confidenceLow => 'Matala varmuus';

  @override
  String get confidenceMedium => 'Kohtalainen varmuus';

  @override
  String get confidenceHigh => 'Korkea varmuus';

  @override
  String get longTermNote =>
      'Pitkän aikavälin vaihteluvälit perustuvat esitettyihin oletuksiin ja levenevät ajan myötä. Hinnat ilman osinkoja. Karkeita arvioita, eivät ennusteita.';

  @override
  String get portfolio => 'Salkku';

  @override
  String get portfolioEmpty =>
      'Täällä ei ole vielä mitään. Avaa osake ja napauta ”Lisää salkkuun” seurataksesi omistuksiasi.';

  @override
  String get portfolioLocalNote =>
      'Tallennetaan tälle laitteelle ja tilillesi, jos olet kirjautunut. Summat muunnetaan EKP:n viitekursseilla; kurssit voivat olla viiveellisiä.';

  @override
  String get addToPortfolio => 'Lisää salkkuun';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Lisää $symbol';
  }

  @override
  String get portfolioQuantity => 'Osakkeiden määrä';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Hinta per osake ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Ostopäivä';

  @override
  String get portfolioAdd => 'Lisää';

  @override
  String get portfolioInvalidNumber => 'Anna nollaa suurempi luku.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol lisättiin salkkuun.';
  }

  @override
  String get portfolioTotalValue => 'Kokonaisarvo';

  @override
  String get portfolioToday => 'Tänään';

  @override
  String get portfolioGainLoss => 'Voitto/tappio';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Osingot tänä vuonna: $amount';
  }

  @override
  String get portfolioInvested => 'Sijoitettu';

  @override
  String get portfolioAllocation => 'Jakauma';

  @override
  String get portfolioPositions => 'Omistukset';

  @override
  String portfolioAvgCost(String price) {
    return 'keskihinta $price';
  }

  @override
  String get portfolioYourPosition => 'Omistuksesi';

  @override
  String get portfolioPurchases => 'Ostot';

  @override
  String get portfolioRemove => 'Poista';

  @override
  String get portfolioExcluded =>
      'Omistukset, joilla ei ole hintaa tai valuuttakurssia, jäävät summien ulkopuolelle.';

  @override
  String get priceAlerts => 'Kurssihälytykset';

  @override
  String get setPriceAlert => 'Aseta kurssihälytys';

  @override
  String alertDialogTitle(String symbol) {
    return 'Kurssihälytys · $symbol';
  }

  @override
  String get alertKindAbove => 'Nousee yli';

  @override
  String get alertKindBelow => 'Laskee alle';

  @override
  String get alertKindMove => 'Liikkuu paljon päivässä';

  @override
  String alertTargetPrice(String currency) {
    return 'Kurssi ($currency)';
  }

  @override
  String get alertMovePercent => 'Päivämuutos (%)';

  @override
  String get alertAlreadyMet => 'Kurssi on jo ohittanut tämän tason.';

  @override
  String get alertSave => 'Aseta hälytys';

  @override
  String alertCreated(String symbol) {
    return 'Hälytys asetettu: $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Ei vielä hälytyksiä. Avaa osake ja napauta kelloa.';

  @override
  String get alertsNote =>
      'Hälytykset tarkistetaan 5 minuutin välein, kun WhatStock on käynnissä. Tietokoneella sovellus jatkaa valikkorivillä tai ilmaisinalueella; puhelimessa hälytykset tulevat toistaiseksi vain sovelluksen ollessa auki.';

  @override
  String alertDescAbove(String price) {
    return 'Yli $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Alle $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Päivämuutos ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Lauennut $date, kurssi $price';
  }

  @override
  String get alertRearm => 'Aktivoi uudelleen';

  @override
  String get alertDelete => 'Poista';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol nousi yli $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol laski alle $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol liikkui tänään $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Nykyinen kurssi: $price';
  }

  @override
  String get alertOpen => 'Avaa';

  @override
  String get keepInTrayTitle => 'Jatka toimintaa, kun ikkuna suljetaan';

  @override
  String get keepInTraySubtitle =>
      'WhatStock pysyy valikkorivillä tai ilmaisinalueella, joten pikanäppäin ja kurssihälytykset toimivat edelleen.';

  @override
  String get termsOfUse => 'Käyttöehdot';

  @override
  String get privacyPolicy => 'Tietosuojaseloste';

  @override
  String get subscriptionLegal =>
      'Tilaus uusiutuu automaattisesti joka kuukausi, kunnes peruutat sen. Tilaamalla hyväksyt käyttöehdot ja tietosuojaselosteen.';

  @override
  String get deleteAccount => 'Poista tili';

  @override
  String get deleteAccountTitle => 'Poistetaanko tilisi?';

  @override
  String get deleteAccountBody =>
      'Tilisi ja kaikki palvelimellamme oleva (sähköposti, kiintiö, käyttö) poistetaan pysyvästi, ja käyttämättömät analyysit menetetään. Selaimessa maksettu tilaus perutaan heti; App Storen tai Google Playn tilaus on peruttava kaupan asetuksista.';

  @override
  String get deleteLocalData =>
      'Poista myös tämän laitteen tiedot (salkku, hälytykset, suosikit, historia, tallennetut analyysit)';

  @override
  String get deleteAccountConfirm => 'Poista pysyvästi';

  @override
  String get accountDeleted => 'Tilisi on poistettu.';

  @override
  String get errDeleteAccount =>
      'Tiliä ei voitu poistaa. Tarkista yhteys ja yritä uudelleen.';

  @override
  String get aiTrialBriefNote =>
      'Kokeilun analyysit ovat lyhyitä, ja ne tehdään nopeammalla tekoälymallilla. Paketilla saat kyvykkäimmän tekoälymme, enemmän verkkohakuja sekä pituudet Vakio ja Syvällinen.';

  @override
  String get billingMonthly => 'Kuukausittain';

  @override
  String get billingYearly => 'Vuosittain';

  @override
  String get yearlyDiscount => '2 kk ilmaiseksi';

  @override
  String get perYear => '/ vuosi';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price kuukaudessa';
  }

  @override
  String get subscriptionLegalYearly =>
      'Vuositilaus uusiutuu automaattisesti joka vuosi, kunnes peruutat sen. Tilaamalla hyväksyt käyttöehdot ja tietosuojaselosteen.';

  @override
  String get myAnalyses => 'Omat analyysit';

  @override
  String get navAlerts => 'Hälytykset';

  @override
  String get inviteTitle => 'Suljettu esiversio';

  @override
  String get inviteBody =>
      'WhatStock on toistaiseksi saatavilla vain kutsusta. Anna saamasi kutsukoodi.';

  @override
  String get inviteCodeLabel => 'Kutsukoodi';

  @override
  String get inviteContinue => 'Jatka';

  @override
  String get inviteInvalid => 'Tämä kutsukoodi ei ole voimassa.';

  @override
  String get inviteExpired =>
      'Tämä kutsu on vanhentunut. Pyydä uusi koodi henkilöltä, joka kutsui sinut.';

  @override
  String get inviteDeviceLimit =>
      'Tätä kutsukoodia käytetään jo enimmäismäärällä laitteita.';

  @override
  String get previewConfidential => 'Luottamuksellinen esiversio';

  @override
  String get errPreviewDailyLimit =>
      'Tämän esiversion päivittäinen analyysiraja on täynnä. Yritä uudelleen huomenna.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tuntia sitten',
      one: '1 tunti sitten',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päivää sitten',
      one: '1 päivä sitten',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Päivitetäänkö tämä analyysi?';

  @override
  String staleBody(String age) {
    return 'Se luotiin $age. Hinnat, uutiset ja tulokset ovat voineet muuttua sen jälkeen.';
  }

  @override
  String get staleKeep => 'Näytä aiempi';

  @override
  String get staleRefresh => 'Luo uusi';

  @override
  String seeAll(int count) {
    return 'Näytä kaikki ($count)';
  }

  @override
  String get searchAnalyses => 'Hae analyyseistäsi';

  @override
  String get deleteAnalysis => 'Poista';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol-analyysi poistettu';
  }

  @override
  String get keyLevelAlertHint =>
      'Napauta tasoa, niin saat hälytyksen, kun hinta saavuttaa sen.';

  @override
  String get shareAnalysisTitle => 'Jaa analyysi';

  @override
  String get shareAsImage => 'Jaa kuvana';

  @override
  String get shareAsText => 'Jaa tekstinä';

  @override
  String get shareCardFooter => 'Tehty WhatStockilla';

  @override
  String get shareCardDisclaimer => 'Tekoälyanalyysi · ei sijoitusneuvontaa';

  @override
  String get referralTitle => 'Kutsu ystäviä';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lisäanalyysia',
      one: '1 lisäanalyysin',
    );
    return 'Jaa koodisi. Ystäväsi saa heti $_temp0, ja sinä saat saman verran hänen ensimmäisen analyysinsa jälkeen.';
  }

  @override
  String get referralYourCode => 'Koodisi';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Kutsuttu: $invited · Palkittu: $rewarded';
  }

  @override
  String get referralHaveCode => 'Onko sinulla ystävän koodi?';

  @override
  String get referralRedeem => 'Lunasta';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lisäanalyysia lisätty. Tervetuloa!',
      one: '1 lisäanalyysi lisätty. Tervetuloa!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Koodia ei ole olemassa. Tarkista se ja yritä uudelleen.';

  @override
  String get referralErrOwn => 'Et voi lunastaa omaa koodiasi.';

  @override
  String get referralErrAlready => 'Olet jo lunastanut ystävän koodin.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lisäanalyysia',
      one: '1 lisäanalyysin',
    );
    return 'Analysoin osakkeita WhatStockilla: kuvaa osake, niin tekoäly selittää sen. Koodillani $code saat $_temp0.';
  }

  @override
  String get referralCopied => 'Koodi kopioitu';

  @override
  String get onboardTitle1 => 'Kuvaa osake';

  @override
  String get onboardBody1 =>
      'Välittäjäsovelluksen näkymä, sanomalehti tai yhtiön logo riittää: WhatStock tunnistaa osakkeen ja näyttää sen kurssin, kaavion ja tärkeimmät tunnusluvut.';

  @override
  String get onboardTitle2 => 'Ymmärrä se minuuteissa';

  @override
  String get onboardBody2 =>
      'Tekoälyanalyysi kertoo, mikä liikuttaa osaketta, mitkä ovat sen riskit ja arvostus, sekä kolme skenaariota siitä, mihin kurssi voi kehittyä – lähteineen ja omalla kielelläsi.';

  @override
  String get onboardTitle3 => 'Pysy ajan tasalla';

  @override
  String get onboardBody3 =>
      'Suosikit, salkkusi ja kurssihälytykset pitävät sinut ajan tasalla. Analyysisi pysyvät laitteellasi valmiina avattaviksi uudelleen.';

  @override
  String get onboardNext => 'Seuraava';

  @override
  String get onboardStart => 'Aloitetaan';

  @override
  String get onboardSkip => 'Ohita';

  @override
  String changesTitle(String date) {
    return 'Edellisen analyysin jälkeen ($date)';
  }

  @override
  String get changesPrice => 'Kurssi';

  @override
  String get changesNoMajor => 'Näkymät eivät ole muuttuneet olennaisesti.';

  @override
  String get changesPreviousSummary => 'Edellinen yhteenveto';

  @override
  String get telemetryTitle => 'Auta parantamaan WhatStockia';

  @override
  String get telemetryBody =>
      'Jaa nimettömiä käyttötilastoja ja kaatumisraportteja: mitä ominaisuuksia käytetään ja mikä meni pieleen. Ei koskaan osakkeitasi, analyysejasi tai henkilötietojasi. Voit muuttaa tätä milloin tahansa Asetuksissa.';

  @override
  String get telemetryAllow => 'Salli';

  @override
  String get telemetryDecline => 'Ei kiitos';

  @override
  String get telemetrySetting => 'Nimettömät tilastot ja kaatumisraportit';

  @override
  String get telemetrySettingHint =>
      'Kuinka usein ominaisuuksia käytetään sekä virheraportit – ilman henkilötietoja tai hakujesi ja analyysiesi sisältöä.';

  @override
  String get askButton => 'Kysy tästä analyysista';

  @override
  String askTitle(String symbol) {
    return 'Kysymyksiä: $symbol';
  }

  @override
  String get askIntro =>
      'Kysy mitä tahansa analyysista: mitä jokin riski tarkoittaa, mikä muuttaisi näkymiä, miten jokin luku on laskettu. Vastaukset perustuvat tähän analyysiin eivätkä ole sijoitusneuvontaa.';

  @override
  String get askHint => 'Kirjoita kysymys…';

  @override
  String get askSend => 'Lähetä';

  @override
  String get askThinking => 'Mietitään…';

  @override
  String get askSuggest1 => 'Mikä on suurin riski?';

  @override
  String get askSuggest2 => 'Mikä muuttaisi näkymiä?';

  @override
  String get askSuggest3 => 'Selitä yksinkertaisesti';

  @override
  String get askMaxReached =>
      'Tämä oli viimeinen kysymys tähän analyysiin. Luo uusi analyysi, jos haluat kysyä lisää.';

  @override
  String get errAskLimit =>
      'Olet saavuttanut tämän päivän kysymysrajan. Yritä uudelleen huomenna.';

  @override
  String get eventTomorrow => 'Huomenna';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days päivän päästä',
      one: '1 päivän päästä',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Osavuosikatsaus';

  @override
  String get eventBeforeOpen => 'ennen pörssin avautumista';

  @override
  String get eventAfterClose => 'pörssin sulkeuduttua';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS-ennuste: $value';
  }

  @override
  String get eventFromAnalysis => 'Omasta analyysistasi';

  @override
  String get eventDividend => 'Osinko odotettavissa';

  @override
  String get eventDividendEstimate => 'Arvio kirjaamiesi maksujen perusteella';

  @override
  String get eventsHint =>
      'Suosikkiesi ja salkkusi osakkeiden tulosjulkistukset seuraavien 90 päivän ajalta, analyysiesi nostamat päivätyt tapahtumat sekä kirjaamiesi maksujen perusteella odotettavissa olevat osingot.';

  @override
  String get eventsEmpty =>
      'Ei päivättyjä tapahtumia seuraavan 90 päivän aikana. Lisää suosikkeja tai salkkuosakkeita nähdäksesi niiden tulosjulkistukset täällä; kirjatuista osingoista näytetään seuraava odotettavissa oleva maksu.';

  @override
  String get compareTitle => 'Vertailu';

  @override
  String get compareAdd => 'Lisää osake';

  @override
  String get compareRemove => 'Poista';

  @override
  String get compareTickerHint => 'Osaketunnus, esim. MSFT';

  @override
  String get compareHint =>
      'Tunnusluvut rinnakkain; kunkin rivin paras arvo on korostettu. Summat ovat kunkin osakkeen omassa valuutassa.';

  @override
  String get compareNoAnalysis => 'Ei vielä analyysia';

  @override
  String get portfolioDividends => 'Vuotuiset osingot';

  @override
  String portfolioDividendYield(String percent) {
    return 'Tuotto $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Odotetut vuotuiset osingot perustuvat viimeisten 12 kuukauden aikana maksettuihin osinkoihin; tulevia maksuja ei taata.';

  @override
  String positionDividend(String amount) {
    return 'Osinko: $amount vuodessa';
  }

  @override
  String get chartAvgCost => 'Oma ka.';

  @override
  String get chartAlertLevel => 'Hälytys';

  @override
  String get marketsToday => 'Markkinat tänään';

  @override
  String get notesTitle => 'Omat muistiinpanot';

  @override
  String get notesHint =>
      'Miksi ostit sen, mitä seuraat, mikä saisi sinut myymään?';

  @override
  String get notesInfo =>
      'Tallennetaan tälle laitteelle ja tilillesi, jos olet kirjautunut. Tekoälyanalyysi ottaa muistiinpanosi huomioon.';

  @override
  String notesSaved(String date) {
    return 'Tallennettu $date';
  }

  @override
  String get peersTitle => 'Vastaavat yritykset';

  @override
  String get portfolioExport => 'Vie CSV-tiedostona';

  @override
  String get portfolioImport => 'Tuo CSV:stä';

  @override
  String get portfolioImportHint =>
      'Liitä yksi osto riviä kohden: osaketunnus, määrä, hinta, valuutta, päivämäärä (VVVV-KK-PP). Sarakkeet voi erottaa pilkuilla, puolipisteillä tai sarkaimilla; otsikkorivi on valinnainen.';

  @override
  String get portfolioImportButton => 'Tuo';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tapahtumaa lisätty',
      one: '1 tapahtuma lisätty',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count riviä ohitettu',
      one: '1 rivi ohitettu',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Salkku, suosikit, kurssihälytykset ja muistiinpanot synkronoidaan kaikille laitteillesi.';

  @override
  String syncLast(String time) {
    return 'Synkronoitu viimeksi $time';
  }

  @override
  String get syncNow => 'Synkronoi nyt';

  @override
  String get syncFailed =>
      'Synkronointi epäonnistui. Sitä yritetään automaattisesti uudelleen.';

  @override
  String get alertEmailTitle => 'Sähköposti, kun hälytys laukeaa';

  @override
  String get alertEmailOn =>
      'Tarkistamme hälytyksesi muutaman minuutin välein ja lähetämme sinulle sähköpostia, vaikka sovellus olisi suljettu.';

  @override
  String get alertEmailSignIn =>
      'Kirjaudu sisään sähköpostillasi Asetuksissa, niin saat hälytykset sähköpostiin, vaikka sovellus olisi suljettu.';

  @override
  String get portfolioHistory => 'Arvon kehitys';

  @override
  String get portfolioReviewTitle => 'Salkun tekoälyanalyysi';

  @override
  String get portfolioReviewIntro =>
      'Tekoäly käy läpi koko salkkusi: keskittymisen, toimiala- ja valuuttariskin, osakkeidesi yhteiset riskit ja osingot. Kuluttaa 1 analyysin.';

  @override
  String get portfolioReviewButton => 'Analysoi salkkuni';

  @override
  String get portfolioReviewAgain => 'Analysoi uudelleen';

  @override
  String get portfolioReviewWorking => 'Analysoidaan salkkuasi…';

  @override
  String get digestTitle => 'Viikkokooste sähköpostiin';

  @override
  String get digestHint =>
      'Joka maanantai: miten suosikkisi ja salkkusi kehittyivät viime viikolla sekä niiden tulevat tulosjulkistuspäivät.';

  @override
  String get benchmarkTitle => 'Verrattuna S&P 500:aan';

  @override
  String get benchmarkTitleIndex => 'Verrattuna indeksiin';

  @override
  String get benchmarkHintIndex =>
      'Ikään kuin jokainen osto olisi sijoitettu samana päivänä valittua indeksiä seuraavaan rahastoon. Ilman osinkoja; aiempi tuotto ei ennusta tulevaa.';

  @override
  String get benchmarkYours => 'Omat ostosi';

  @override
  String benchmarkAhead(String points) {
    return '$points prosenttiyksikköä indeksiä parempi';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points prosenttiyksikköä indeksistä jäljessä';
  }

  @override
  String get portfolioSell => 'Myy';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Myy $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Myyntihinta per osake ($currency)';
  }

  @override
  String get portfolioSellDate => 'Myyntipäivä';

  @override
  String get portfolioSellAll => 'Kaikki';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Omistat $quantity';
  }

  @override
  String get portfolioSold => 'Myyty';

  @override
  String get portfolioRealized => 'Toteutunut';

  @override
  String get portfolioClosed => 'Suljetut omistukset';

  @override
  String get portfolioClosedNote => 'Kaikki osakkeet myyty';

  @override
  String get portfolioTransactions => 'Tapahtumat';

  @override
  String get portfolioRealizedByYear => 'Toteutuneet voitot vuosittain';

  @override
  String get portfolioRealizedHint =>
      'Myynnit kohdistetaan ensin vanhimpiin ostoihisi (FIFO), ja ne muunnetaan tämän päivän valuuttakurssilla. Käytä veroilmoituksessa välittäjäsi tiliotetta.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Tämän analyysin jälkeen on julkaistu uusi osavuosikatsaus ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Uudet tulokset';

  @override
  String get portfolioImportBrokers =>
      'Myös palveluiden Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity ja Robinhood viennit tunnistetaan myynteineen ja osinkoineen (lähdeveron jälkeen); talletukset ohitetaan.';

  @override
  String get portfolioImportFile => 'Valitse tiedosto';

  @override
  String offlineBanner(String time) {
    return 'Ei yhteyttä – näytetään viimeksi tallennetut tiedot ($time).';
  }

  @override
  String get glossMarketCap =>
      'Paljonko koko yhtiö on arvoinen pörssissä: osakkeen hinta × osakkeiden määrä.';

  @override
  String get glossSharesOutstanding =>
      'Kuinka monta osaketta yhtiö on laskenut liikkeeseen. Jos määrä kasvaa, kukin osake omistaa pienemmän palan; takaisinostot pienentävät sitä.';

  @override
  String get glossPeTrailing =>
      'Hinta ÷ osakekohtainen tulos viimeiseltä 12 kuukaudelta: kuinka monen vuoden nykyisestä voitosta maksat. Matalampi on halvempi, mutta nopeasti kasvavilla yhtiöillä P/E on yleensä korkea.';

  @override
  String get glossPeForward =>
      'Kuten P/E, mutta analyytikoiden seuraaville 12 kuukaudelle odottamalla voitolla. Toteutunutta P/E:tä matalampi tarkoittaa, että voiton odotetaan kasvavan.';

  @override
  String get glossPb =>
      'Hinta ÷ osakekohtainen kirja-arvo (varat miinus velat). Noin 1 tarkoittaa, että markkinat arvostavat yhtiön siihen, mitä se omistaa paperilla.';

  @override
  String get glossPs =>
      'Markkina-arvo ÷ vuotuinen liikevaihto. Hyödyllinen yhtiöille, joilla on vielä vähän tai ei lainkaan voittoa; vertaa saman toimialan sisällä.';

  @override
  String get glossEvToFcf =>
      'Yhtiön arvo velat mukaan lukien (EV) ÷ käteinen, jonka se tuottaa vuodessa investointien jälkeen. Matalampi tarkoittaa, että saat hinnalla enemmän käteistä.';

  @override
  String get glossPeg =>
      'P/E ÷ odotettu vuotuinen voiton kasvu (%). Noin 1 pidetään usein kohtuullisena; se suhteuttaa P/E:n kasvuun.';

  @override
  String get glossEps =>
      'Osakekohtainen voitto viimeiseltä 12 kuukaudelta. Vuosien mittaan kasvava EPS on yksi vahvimmista terveen yhtiön merkeistä.';

  @override
  String get glossBeta =>
      'Kuinka paljon osake yleensä liikkuu markkinan mukana: 1 = kuten markkina, 1,5 = noin 50 % suuremmat heilahtelut, alle 1 = rauhallisempi.';

  @override
  String get glossRevenueTtm =>
      'Viimeisen 12 kuukauden kokonaismyynti ennen kuluja.';

  @override
  String get glossNetIncomeTtm =>
      'Voitto, joka jäi jäljelle kaikkien kulujen, korkojen ja verojen jälkeen viimeisen 12 kuukauden aikana.';

  @override
  String get glossGrossMargin =>
      'Osuus liikevaihdosta, joka jää tuotteiden välittömien kulujen jälkeen. Korkea marginaali kertoo usein hinnoitteluvoimasta.';

  @override
  String get glossOperatingMargin =>
      'Osuus liikevaihdosta, joka jää liiketoiminnan pyörittämisen (palkat, vuokrat, markkinointi) jälkeen, ennen korkoja ja veroja.';

  @override
  String get glossNetMargin =>
      'Osuus liikevaihdosta, joka päätyy lopulliseksi voitoksi. 20 % tarkoittaa, että jokaisesta 100 myynnistä 20 on voittoa.';

  @override
  String get glossRoe =>
      'Oman pääoman tuotto: vuosivoitto ÷ omistajien pääoma. Näyttää, kuinka hyvin johto käyttää osakkeenomistajien rahoja; yli noin 15 % on vahva.';

  @override
  String get glossRoa =>
      'Kokonaispääoman tuotto: vuosivoitto ÷ kaikki, mitä yhtiö omistaa. Vertaa saman toimialan sisällä.';

  @override
  String get glossDebtToEquity =>
      'Velat ÷ omistajien pääoma. Korkeampi tarkoittaa enemmän lainarahaa: enemmän riskiä, kun korot nousevat tai liiketoiminta hidastuu.';

  @override
  String get glossCurrentRatio =>
      'Lyhytaikaiset varat ÷ vuoden sisällä erääntyvät laskut. Yli 1 tarkoittaa, että yhtiö pystyy kattamaan lähiajan laskunsa.';

  @override
  String get glossRevenueGrowth =>
      'Kuinka paljon liikevaihto kasvoi vuodentakaiseen verrattuna.';

  @override
  String get glossEpsGrowth =>
      'Kuinka paljon osakekohtainen voitto kasvoi vuodentakaiseen verrattuna.';

  @override
  String get glossDividendYield =>
      'Vuotuinen osinko ÷ osakkeen hinta: käteistulo, jonka saisit vuodessa, prosentteina maksamastasi summasta.';

  @override
  String get glossDividendPerShare =>
      'Yhdelle osakkeelle viimeisen vuoden aikana maksettu osinko.';

  @override
  String get glossPayoutRatio =>
      'Osuus voitosta, joka maksetaan osinkoina. Jos se on yli 100 %, yhtiö maksaa enemmän kuin ansaitsee, mikä harvoin kestää pitkään.';

  @override
  String get portfolioBeta => 'Salkun beta';

  @override
  String get glossPortfolioBeta =>
      'Osakkeidesi beta painotettuna niiden arvolla: suunnilleen kuinka monta prosenttia osakkeesi liikkuvat, kun markkina liikkuu 1 %. Jos se on yli 1, ne heiluvat markkinaa enemmän, jos alle 1, vähemmän. Käteistä ei lasketa mukaan.';

  @override
  String get portfolioTop3 => '3 suurinta omistusta';

  @override
  String get glossPortfolioTop3 =>
      'Kuinka suuri osa osakkeidesi arvosta on kolmessa suurimmassa omistuksessasi. Mitä suurempi osuus on, sitä enemmän yhden yhtiön huonot uutiset voivat vahingoittaa koko salkkua.';

  @override
  String get glossDividendGrowth5y =>
      'Kuinka paljon osakekohtainen osinko on kasvanut keskimäärin vuodessa viimeisten viiden vuoden aikana. Tasainen kasvu kertoo yleensä, että yhtiö luottaa kassavirtaansa; osingon leikkaus on usein varoitusmerkki.';

  @override
  String get glossYieldOnCost =>
      'Viimeisten 12 kuukauden aikana saadut osingot jaettuna sillä, mitä maksoit yhä omistamistasi osakkeista. Toisin kuin osinkotuotto, se lasketaan omaan ostohintaasi nähden, ei tämän päivän kurssiin.';

  @override
  String get glossTitle => 'Mitä se tarkoittaa?';

  @override
  String get watchNewsTitle => 'Uutisia osakkeistasi';

  @override
  String get undo => 'Kumoa';

  @override
  String get watchSort => 'Lajittele';

  @override
  String get watchSortOwn => 'Oma järjestys';

  @override
  String get watchSortGainers => 'Suurimmat nousijat ensin';

  @override
  String get watchSortLosers => 'Suurimmat laskijat ensin';

  @override
  String get watchSortName => 'Tunnuksen mukaan (A–Z)';

  @override
  String get watchHint =>
      'Vedä kahvasta järjestääksesi, pyyhkäise vasemmalle poistaaksesi. Viiva näyttää viimeiset 30 päivää.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: analyysisi on valmis.';
  }

  @override
  String alertFromCost(String price) {
    return 'Keskimääräisestä ostohinnastasi ($price):';
  }

  @override
  String get briefTitle => 'Tänään osakkeidesi kanssa';

  @override
  String get briefButton => 'Tiivistä päivä';

  @override
  String get briefHint =>
      'Lyhyt tekoälyn yhteenveto siitä, miten salkkusi ja suosikkisi liikkuivat tänään ja mitä tuoreimmat uutiset niistä kertovat. Ei kuluta analyysia.';

  @override
  String get briefRefresh => 'Päivitä';

  @override
  String get sectionEarnings => 'Tulokset';

  @override
  String earningsNext(String date) {
    return 'Seuraava tulosjulkistus: $date';
  }

  @override
  String get earningsExpected => 'Odotettu EPS';

  @override
  String get earningsReported => 'Toteutunut EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Odotetulla EPS-tasolla tai sen yli $beats/$total viime neljänneksellä',
      one: 'Odotetulla EPS-tasolla tai sen yli $beats/1 neljänneksellä',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol julkaisee osavuosikatsauksen huomenna';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol julkaisee osavuosikatsauksen tänään';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: osinko odotettavissa tänään';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Noin $amount. Kirjaa se salkkuusi, kun se saapuu.';
  }

  @override
  String get dividendRemindersTitle => 'Osinkomuistutukset';

  @override
  String get dividendRemindersSubtitle =>
      'Ilmoitus päivänä, jolloin osinkoa odotetaan kirjaamiesi maksujen rytmin perusteella, jotta voit kirjata sen';

  @override
  String get earningsRemindersTitle => 'Tulosmuistutukset';

  @override
  String get earningsRemindersSubtitle =>
      'Ilmoitus päivää ennen kuin suosikkiesi tai salkkusi osakkeet julkaisevat osavuosikatsauksen';

  @override
  String addAllToFavorites(int count) {
    return 'Lisää kaikki suosikkeihin ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Tuo kuvakaappauksesta';

  @override
  String get holdingsReading => 'Luetaan omistuksiasi…';

  @override
  String get holdingsReviewTitle => 'Löydetyt omistukset';

  @override
  String get holdingsReviewHint =>
      'Tarkista luvut ennen kuin lisäät ne. Hinta on keskimääräinen ostohintasi osaketta kohden, ei tämän päivän hinta.';

  @override
  String get holdingsNoPrice => 'Kuvassa ei ole keskimääräistä ostohintaa';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Lisää $count omistusta',
      one: 'Lisää 1 omistus',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Tästä kuvasta ei löytynyt osakeomistuksia. Kokeile kuvakaappausta välittäjäsi omistukset- tai positiot-sivusta.';

  @override
  String get week52Range => '52 viikon vaihteluväli';

  @override
  String week52BelowHigh(String percent) {
    return '$percent 52 viikon ylimmän alapuolella';
  }

  @override
  String get week52AtHigh => '52 viikon ylimmässä';

  @override
  String get alertKindTrailing => 'Laskee huipusta';

  @override
  String get alertTrailingPercent => 'Lasku huipusta (%)';

  @override
  String get alertTrailingHint =>
      'Seuraa hintaa ylöspäin: hälytys laukeaa, kun hinta laskee näin paljon korkeimmasta tasostaan asettamisen jälkeen.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent lasku huipusta';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'huippu tähän asti: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol laski $percent huipustaan';
  }

  @override
  String get sectionInsiders => 'Sisäpiirikaupat';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ostoa',
      one: '1 osto',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count myyntiä',
      one: '1 myynti',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Netto: $shares osaketta';
  }

  @override
  String get insiderBuy => 'Ostettu';

  @override
  String get insiderSell => 'Myyty';

  @override
  String get insiderHint =>
      'Johdon ja hallituksen jäsenten ostot ja myynnit avoimilla markkinoilla viimeisten 90 päivän aikana (SEC Form 4). Optioiden käyttöä ja osakepalkkioita ei lasketa.';

  @override
  String get insiderNone =>
      'Ei sisäpiirin ostoja tai myyntejä avoimilla markkinoilla viimeisten 90 päivän aikana.';

  @override
  String get analystTrend => 'Miten näkemykset muuttuivat kuukausittain';

  @override
  String get watchListAll => 'Kaikki';

  @override
  String get watchListNew => 'Uusi lista';

  @override
  String get watchListName => 'Listan nimi';

  @override
  String get watchListRename => 'Nimeä lista uudelleen';

  @override
  String get watchListDelete => 'Poista lista';

  @override
  String get watchListAddTo => 'Lisää listaan';

  @override
  String get watchListEmpty =>
      'Tällä listalla ei ole vielä osakkeita. Lisää osake napauttamalla sen vieressä olevaa listapainiketta.';

  @override
  String get portfolioAskTitle => 'Kysymyksiä salkustasi';

  @override
  String get rangeYtd => 'Tänä v.';

  @override
  String get backupTitle => 'Varmuuskopio';

  @override
  String get backupSave => 'Tallenna varmuuskopio';

  @override
  String get backupSaveHint =>
      'Suosikkisi, listasi, salkkusi, hälytyksesi ja muistiinpanosi yhdessä tiedostossa.';

  @override
  String get backupRestore => 'Palauta varmuuskopiosta';

  @override
  String get backupRestoreHint =>
      'Lisää tiedoston sisällön; mitään nykyisistä tiedoistasi ei poisteta.';

  @override
  String get backupRestored => 'Varmuuskopio palautettu.';

  @override
  String get backupInvalid => 'Tämä tiedosto ei ole WhatStock-varmuuskopio.';

  @override
  String get allocationPositions => 'Osakkeet';

  @override
  String get allocationSectors => 'Sektorit';

  @override
  String get allocationCurrencies => 'Valuutat';

  @override
  String get allocationAccounts => 'Tilit';

  @override
  String get compareReturn1y => '1 vuoden tuotto';

  @override
  String get compareFromHigh => 'Etäisyys 52 viikon ylimmästä';

  @override
  String get briefAutoTitle => 'Päivän yhteenveto joka aamu';

  @override
  String get briefAutoSubtitle =>
      '”Tänään osakkeidesi kanssa” luodaan automaattisesti klo 7.00 jälkeen, kun sovellus on käynnissä; tietokoneilla siitä kertoo ilmoitus. Kuluttaa päivittäistä kysymyskiintiötäsi, ei analyysia.';

  @override
  String get targetsButton => 'Tavoitejakauma';

  @override
  String get targetsTitle => 'Tavoitejakauma';

  @override
  String get targetsHint =>
      'Määritä, kuinka suuri osuus salkusta kullakin osakkeella pitäisi olla. Jätä kenttä tyhjäksi, jos tavoitetta ei ole. Sovellus näyttää sitten, mitä pitää ostaa tai myydä tavoitteen saavuttamiseksi.';

  @override
  String targetsSum(String percent) {
    return 'Yhteensä: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Osta ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Myy ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Tavoitteessa';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol ylitti odotetun EPS:n';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol jäi odotetusta EPS:stä';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Toteutunut EPS $actual, odotettu $estimate';
  }

  @override
  String get newsExplain => 'Mitä tämä tarkoittaa?';

  @override
  String get watchAlertAll => 'Hälytys suurista päivämuutoksista';

  @override
  String get watchAlertAllHint =>
      'Hintahälytys jokaiselle tämän listan osakkeelle: se laukeaa, kun osake liikkuu päivässä näin paljon ylös tai alas. Osakkeet, joilla on jo sellainen, pitävät omansa.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hälytystä asetettu',
      one: '1 hälytys asetettu',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Vie toteutuneet voitot (CSV)';

  @override
  String get portfolioAnnualReturn => 'Vuosituotto';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / vuosi';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Rahapainotteinen vuosituotto (XIRR): ottaa huomioon, milloin ostit ja myit, joten myöhemmin lisätty raha ei vääristä sitä. Näytetään, kun ensimmäinen ostosi on vähintään vuoden vanha; osinkoja ei ole mukana.';

  @override
  String get eventsAddToCalendar => 'Lisää kalenteriin (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Salkkuhälytys';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Ilmoitus, kun koko salkkusi liikkuu näin paljon päivässä.';

  @override
  String get portfolioMoveAlertOff => 'Pois';

  @override
  String portfolioMoveUp(String percent) {
    return 'Salkkusi on tänään $percent plussalla';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Salkkusi on tänään $percent miinuksella';
  }

  @override
  String get whatIfTitle => 'Entä jos olisit sijoittanut?';

  @override
  String get whatIfAmount => 'Summa';

  @override
  String whatIfResult(String amount, String period) {
    return '$period sitten sijoitettu $amount olisi tänään arvoltaan';
  }

  @override
  String get whatIfNote =>
      'Perustuu vain osakkeen hintaan: osinkoja, kuluja ja veroja ei ole huomioitu. Aiempi tuotto ei ennusta tulevaa.';

  @override
  String get watchShare => 'Jaa lista';

  @override
  String get watchImport => 'Lisää osaketunnuksia';

  @override
  String get watchImportHint =>
      'Liitä osaketunnukset pilkuilla, välilyönneillä tai rivinvaihdoilla erotettuina – esimerkiksi lista, jonka joku on jakanut kanssasi.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count osaketta lisätty',
      one: '1 osake lisätty',
      zero: 'Ei uusia osakkeita',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Suurimmat ensin';

  @override
  String get positionsSortGain => 'Suurin kokonaistuotto ensin';

  @override
  String get positionsSortToday => 'Parhaat tänään ensin';

  @override
  String get chartMyBuys => 'Ostosi';

  @override
  String get chartMySells => 'Myyntisi';

  @override
  String get shortcutsTitle => 'Pikanäppäimet';

  @override
  String usMarketOpen(String time) {
    return 'USA:n pörssi auki · sulkeutuu $time päästä';
  }

  @override
  String usMarketClosed(String time) {
    return 'USA:n pörssi kiinni · aukeaa $time päästä';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours t $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days pv $hours t';
  }

  @override
  String get dividendGoalSet => 'Aseta kuukausittainen osinkotavoite';

  @override
  String get dividendGoalTitle => 'Kuukausittainen osinkotavoite';

  @override
  String get dividendGoalAmount => 'Osingot kuukaudessa';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Noin $amount kuukaudessa nykyisillä tuotoilla: $percent tavoitteesta $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Noin $amount kuukaudessa nykyisillä tuotoilla: tavoite $goal saavutettu';
  }

  @override
  String get portfolioAccount => 'Tili';

  @override
  String get portfolioAccountHint => 'esim. osakesäästötili (valinnainen)';

  @override
  String get portfolioAccountAdd => 'Määritä tili';

  @override
  String get portfolioAccountsAll => 'Kaikki tilit';

  @override
  String get portfolioAccountNote =>
      'Vain tämän tilin tapahtumat ja osingot. Käteinen, tavoitteet ja tekoälyanalyysi näkyvät kohdassa Kaikki tilit.';

  @override
  String get portfolioNoAccount => 'Ilman tiliä';

  @override
  String portfolioFee(String currency) {
    return 'Välityspalkkio ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Lisää välityspalkkio';

  @override
  String portfolioFeeRow(String amount) {
    return 'Välityspalkkio: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Vuosiyhteenveto';

  @override
  String get portfolioProceeds => 'Luovutushinta';

  @override
  String get portfolioCostBasis => 'Hankintameno';

  @override
  String get portfolioFeesPaid => 'Maksetut välityspalkkiot';

  @override
  String get portfolioAnnualSummaryNote =>
      'Summat alkuperäisessä valuutassa, muuntamatta. Luovutushinnasta on vähennetty myynnin välityspalkkio; hankintameno sisältää oston välityspalkkion (FIFO). Muunna veroilmoitusta varten verottajan edellyttämällä valuuttakurssilla.';

  @override
  String get portfolioShare => 'Jaa tuotto';

  @override
  String get portfolioShareHeading => 'Oma salkku';

  @override
  String get portfolioTopHoldings => 'Suurimmat omistukset';

  @override
  String get portfolioShareNote => 'Vain prosenttiluvut jaetaan, ei summia.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count omistusta',
      one: '1 omistus',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Ei sijoitusneuvontaa';

  @override
  String get contributionButton => 'Sijoita uutta rahaa';

  @override
  String contributionAmount(String currency) {
    return 'Sijoitettava summa ($currency)';
  }

  @override
  String get contributionHint =>
      'Vain ostoja, ei myyntejä: eniten tavoitteestaan jäljessä olevat omistukset saavat rahat ensin.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares osaketta';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Ei nykyistä hintaa kohteille $symbols: jätetty jaon ulkopuolelle.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Jos vuosituotto pysyy ennallaan ($rate), saavutat tavoitteen noin vuonna $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Suurin lasku';

  @override
  String get glossMaxDrawdown =>
      'Osakkeidesi arvon suurin lasku aiemmasta huipusta myöhempään pohjaan ilman ostojesi ja myyntiesi vaikutusta (aikapainotettu). Se näyttää, kuinka syvän notkahduksen salkkusi on jo kokenut.';

  @override
  String watchSince(String date) {
    return 'Suosikkeihin lisäämisen jälkeen ($date)';
  }

  @override
  String get portfolioSampleTry => 'Kokeile esimerkkisalkulla';

  @override
  String get portfolioSampleBanner =>
      'Tämä on esimerkkisalkku. Lisää omat ostosi sen rinnalle tai poista se.';

  @override
  String get portfolioSampleRemove => 'Poista esimerkki';

  @override
  String get portfolioStopsAll => 'Liukuva stop kaikille omistuksille';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count liukuvaa stopia asetettu',
      one: '1 liukuva stop asetettu',
      zero: 'Kaikilla omistuksilla on jo liukuva stop',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent myynnin jälkeen';
  }

  @override
  String get lotPreviewRealized => 'Toteutunut tästä myynnistä (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Uusi keskihinta: $after (nyt $before)';
  }

  @override
  String get portfolioYtdReturn => 'Tuotto tänä vuonna';

  @override
  String get glossTwrYtd =>
      'Aikapainotettu tuotto vuoden alusta (tai ensimmäisestä ostostasi, jos se oli tänä vuonna): jokainen päivä laskee niiden osakkeiden muutoksen, jotka omistit sinä päivänä, ja päivät ketjutetaan yhteen – sijoittamasi tai nostamasi raha ei ole tuottoa, joten sitä voi verrata indeksiin. Alla: valittu indeksi samalla ajanjaksolla.';

  @override
  String alertDistance(String price, String percent) {
    return 'Nyt $price · $percent jäljellä';
  }

  @override
  String get watchSortSince => 'Muutoksen mukaan lisäämisestä lähtien';

  @override
  String get portfolioTodayMovers => 'Liikkuivat tänään eniten:';

  @override
  String get lotNoteAdd => 'Lisää muistiinpano';

  @override
  String get lotNoteBuyHint =>
      'Miksi ostat? Tallentuu osakkeen muistiinpanoihin päivämäärän kanssa.';

  @override
  String get lotNoteSellHint =>
      'Miksi myyt? Tallentuu osakkeen muistiinpanoihin päivämäärän kanssa.';

  @override
  String get lotNoteBought => 'Ostettu';

  @override
  String get positionHeld => 'Omistusaika';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months kuukautta',
      one: '$months kuukausi',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days päivää',
      one: '$days päivä',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return '$date alkaen';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Osuus salkusta tämän jälkeen: $after (nyt $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Maksa käteisestä (nyt $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Lisää käteiseen (nyt $amount)';
  }

  @override
  String get onboardTitle4 => 'Seuraa salkkuasi';

  @override
  String get onboardBody4 =>
      'Tuo välittäjäsi vientitiedosto (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) tai lisää kaupat käsin: näet tuottosi indeksin rinnalla, osinkosi ja vuosiyhteenvedon veroilmoitusta varten.';

  @override
  String get lotEdit => 'Muokkaa';

  @override
  String lotEditTitle(String symbol) {
    return 'Muokkaa tapahtumaa · $symbol';
  }

  @override
  String get lotSave => 'Tallenna';

  @override
  String dividendEditTitle(String symbol) {
    return 'Muokkaa osinkoa · $symbol';
  }

  @override
  String get activityTitle => 'Kaikki tapahtumat';

  @override
  String get activitySearchHint => 'Suodata tunnuksella';

  @override
  String get activityNoMatch => 'Suodatinta vastaavia tapahtumia ei ole.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jo kirjattu, jätetty pois',
      one: '1 jo kirjattu, jätetty pois',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'Tunnuksen vaihto';

  @override
  String tickerChangeTitle(String symbol) {
    return 'Tunnuksen vaihto · $symbol';
  }

  @override
  String get tickerChangeNew => 'Uusi tunnus';

  @override
  String get tickerChangeHint =>
      'Kun yhtiö vaihtaa tunnustaan (esim. FB → META): kaikki tapahtumat, osingot, osakesplitit, muistiinpano ja hälytykset siirtyvät uudelle tunnukselle.';

  @override
  String tickerChanged(String symbol) {
    return 'Siirretty tunnukselle $symbol';
  }

  @override
  String get referralErrSignIn =>
      'Kirjaudu sisään sähköpostillasi lunastaaksesi ystävän koodin.';

  @override
  String get referralErrFull =>
      'Tämä koodi on jo lunastettu niin monta kertaa kuin mahdollista.';

  @override
  String portfolioGoalReachedBody(String value) {
    return 'Salkkusi arvo on nyt $value.';
  }

  @override
  String get errAiTruncated =>
      'Analyysi katkesi ennen kuin se valmistui. Yritä uudelleen – se ei kuluttanut kiintiötäsi.';

  @override
  String get errImageUnsupported =>
      'Kuvaa ei voi lukea. Tallenna se JPEG- tai PNG-muodossa ja yritä uudelleen.';

  @override
  String get errRateLimited =>
      'Liian monta pyyntöä lyhyessä ajassa. Odota minuutti ja yritä uudelleen.';

  @override
  String get watchListNameTaken => 'Samanniminen lista on jo olemassa.';

  @override
  String watchListLimit(int max) {
    return 'Voit luoda enintään $max listaa.';
  }

  @override
  String portfolioBuyBelowSold(String quantity) {
    return 'Vähintään $quantity – niin monta on jo myyty';
  }

  @override
  String get restoreNothing => 'Palautettavia aiempia ostoksia ei löytynyt.';

  @override
  String get manageSubscriptionElsewhere =>
      'Täällä ei ole hallittavaa tilausta. App Storesta tai Google Playsta ostettua tilausta hallitaan kaupan asetuksissa.';

  @override
  String get backupFailed =>
      'Varmuuskopiota ei voitu tallentaa. Yritä uudelleen.';

  @override
  String get syncTooLarge =>
      'Tietosi ovat liian suuret synkronoitaviksi tilillesi. Poista tapahtumia tai muistiinpanoja, joita et enää tarvitse, niin synkronointia yritetään uudelleen.';

  @override
  String get noteFull =>
      'Tämän osakkeen muistiinpanot ovat täynnä, joten tätä merkintää ei lisätty. Lyhennä muistiinpanoja ja yritä uudelleen.';

  @override
  String portfolioNoRateFor(String symbols) {
    return 'Ei valuuttakurssia kohteille $symbols.';
  }

  @override
  String dividendsNotConverted(int count, String currencies) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count osinkoa ($currencies) jää summien ulkopuolelle, koska niille ei ole valuuttakurssia.',
      one:
          '1 osinko ($currencies) jää summien ulkopuolelle, koska sille ei ole valuuttakurssia.',
    );
    return '$_temp0';
  }

  @override
  String get signOutTitle => 'Kirjaudutaanko ulos?';

  @override
  String get signOutBody =>
      'Salkkusi, listasi, kurssihälytyksesi ja muistiinpanosi säilyvät tililläsi ja poistetaan tältä laitteelta. Saat ne takaisin kirjautumalla uudelleen sisään.';

  @override
  String get signOutUnsaved =>
      'Joitakin muutoksia ei voitu tallentaa tilillesi (ei yhteyttä?). Jos kirjaudut nyt ulos, ne menetetään.';

  @override
  String get signOutAnyway => 'Kirjaudu silti ulos';

  @override
  String get fileTooLarge => 'Tämä tiedosto on liian suuri avattavaksi täällä.';

  @override
  String get portfolioGoalSet => 'Aseta tavoite';

  @override
  String get portfolioGoalTitle => 'Salkun tavoite';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent tavoitteesta $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Tavoite $amount saavutettu';
  }

  @override
  String get portfolioGoalRemove => 'Poista tavoite';

  @override
  String get alertEdit => 'Muokkaa hälytystä';

  @override
  String get positionOpenLots => 'Yhä hallussa (vanhimmat ensin)';

  @override
  String get lotRemoved => 'Tapahtuma poistettu';

  @override
  String get alertDeleted => 'Hälytys poistettu';

  @override
  String get alertsClearTriggered => 'Tyhjennä lauenneet hälytykset';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hälytystä poistettu',
      one: '1 hälytys poistettu',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Aloitusnäkymä';

  @override
  String get allocationCountries => 'Maat';

  @override
  String get newsExplainNoteResearch =>
      'Tekoälyn selitys: se tarkistaa tosiasiat verkosta, avaa artikkelin ja arvioi, kuinka luotettava lähde on. Se ei ole sijoitusneuvontaa. Kuluttaa päivittäistä kysymyskiintiötäsi, ei analyysia.';

  @override
  String get sourceOfficial => 'Virallinen';

  @override
  String get sourcePressRelease => 'Tiedote';

  @override
  String get sourceMajorNews => 'Suuri media';

  @override
  String get sourceOpinion => 'Mielipide';

  @override
  String get earningsSummaryButton => 'Mitä viime raportissa oli?';

  @override
  String get earningsSummaryNote =>
      'Tekoälyn tiivistelmä yhtiön tulosjulkistuksesta ja sen löytämästä mediauutisoinnista verkossa. Se ei ole sijoitusneuvontaa. Kuluttaa päivittäistä kysymyskiintiötäsi, ei analyysia.';

  @override
  String get compareLastSurprise => 'Edellisen kvartaalin EPS vs. odotettu';

  @override
  String get compareNextReport => 'Seuraava tulosjulkistus';

  @override
  String get resolvingDescription => 'Selvitetään, mitä osaketta tarkoitat…';

  @override
  String get instrumentTitle => 'Tietoa tästä instrumentista';

  @override
  String get instrumentHint =>
      'Tälle tunnukselle ei ole yritysprofiilia – kyse voi olla ETF:stä, rahastosta tai talletustodistuksesta. Kysy tekoälyltä, mikä se on, mitä se sisältää ja mitä se maksaa.';

  @override
  String get instrumentAsk => 'Mikä tämä on?';

  @override
  String get instrumentNote =>
      'Tekoälyn selitys liikkeeseenlaskijan rahastosivun ja sen verkosta löytämien taloussivustojen perusteella. Se ei ole sijoitusneuvontaa. Kuluttaa päivittäistä kysymyskiintiötäsi, ei analyysia.';

  @override
  String suggestAskAi(String query) {
    return 'Kysy tekoälyltä: ”$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Ei nykyistä hintaa kohteille $symbols.';
  }

  @override
  String get eventsRecentResults => 'Tuoreet tulokset';

  @override
  String get saveToNotes => 'Tallenna omiin muistiinpanoihin';

  @override
  String get savedToNotes => 'Tallennettu muistiinpanoihisi';

  @override
  String get portfolioDividendsReceived => 'Saadut osingot';

  @override
  String get portfolioDividendsThisYear => 'Tänä vuonna';

  @override
  String get portfolioDividendsAllTime => 'Koko ajalta';

  @override
  String get portfolioAddDividend => 'Lisää osinko';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Saatu summa ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Maksupäivä';

  @override
  String get portfolioDividendsEmpty =>
      'Osinkoja ei ole vielä kirjattu. Lisää ne käsin tai tuo välittäjäsi vientitiedosto – myös sen osinkorivit poimitaan.';

  @override
  String get portfolioSplit => 'Osakesplitti';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Osakesplitti: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Ennen splittiä päivätyt ostot ja myynnit oikaistaan: osakkeiden lukumäärä kerrotaan ja osakekohtainen hinta jaetaan, joten hankintameno pysyy samana.';

  @override
  String get portfolioSplitRatio => 'Suhde (uudet : vanhat)';

  @override
  String get portfolioSplitRatioError =>
      'Anna suhde, esimerkiksi 10:1, tai 1:10 käänteiselle splitille.';

  @override
  String get portfolioSplitDate => 'Splitin päivämäärä';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Osakesplitti $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Osakesplitti poistettu';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count osakesplittiä lisätty',
      one: '1 osakesplitti lisätty',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count osinkoa lisätty',
      one: '1 osinko lisätty',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Vie osingot (CSV)';

  @override
  String get portfolioDividendDeleted => 'Osinko poistettu';

  @override
  String get portfolioDividendsHint =>
      'Summat sellaisina kuin ne tulivat tilillesi, maksuvaluutassa; yhteissummat muunnetaan tämän päivän kurssilla. Käytä veroilmoitukseen välittäjäsi raporttia.';

  @override
  String get awayTitle => 'Kun olit poissa';

  @override
  String awaySince(String when) {
    return 'Alkaen $when';
  }

  @override
  String get awayQuiet => 'Mikään ei liikkunut paljoa.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hälytystä lauennut',
      one: '1 hälytys lauennut',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Tulokset julkaistu: $symbols';
  }

  @override
  String get moveWhyButton => 'Miksi se liikkuu tänään?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent tänään';
  }

  @override
  String get moveWhyNote =>
      'Tekoälyn selitys verkosta löytyneistä tämän päivän uutisista; todellinen syy voi olla tuntematon tai eri. Ei sijoitusneuvontaa. Kuluttaa päivittäistä kysymyskiintiötäsi, ei analyysia.';

  @override
  String get sectionTechnical => 'Tekninen kuva';

  @override
  String get labelSma50 => '50 päivän keskiarvo';

  @override
  String get labelSma200 => '200 päivän keskiarvo';

  @override
  String get labelRsi => 'RSI (14 päivää)';

  @override
  String get labelVolatility30 => 'Volatiliteetti (30 päivää)';

  @override
  String techAbove(String percent) {
    return '$percent yläpuolella';
  }

  @override
  String techBelow(String percent) {
    return '$percent alapuolella';
  }

  @override
  String get techOverbought => 'yliostettu';

  @override
  String get techOversold => 'ylimyyty';

  @override
  String get techNeutral => 'neutraali';

  @override
  String get techGoldenCross =>
      '50 päivän keskiarvo on 200 päivän keskiarvon yläpuolella – klassisen tulkinnan mukaan nousutrendi.';

  @override
  String get techDeathCross =>
      '50 päivän keskiarvo on 200 päivän keskiarvon alapuolella – klassisen tulkinnan mukaan laskutrendi.';

  @override
  String get glossSma50 =>
      'Viimeisten 50 kaupankäyntipäivän keskimääräinen päätöskurssi. Sen yläpuolella oleva kurssi tulkitaan usein lyhyen aikavälin vahvuudeksi, alapuolella heikkoudeksi.';

  @override
  String get glossSma200 =>
      'Viimeisten 200 kaupankäyntipäivän keskimääräinen päätöskurssi – klassinen pitkän aikavälin trendiviiva. Monet sijoittajat pitävät sen yläpuolella olevaa kurssia pitkän aikavälin nousutrendinä.';

  @override
  String get glossRsi =>
      'Suhteellinen voimaindeksi: vertaa viimeaikaisia nousuja viimeaikaisiin laskuihin asteikolla 0–100. Yli 70:n osaketta kutsutaan usein yliostetuksi (se on noussut nopeasti), alle 30:n ylimyydyksi – mutta vahva trendi voi pysyä siellä pitkään.';

  @override
  String get glossVolatility =>
      'Kuinka paljon kurssi heilahtelee päivästä toiseen, vuositasolle muutettuna: 20 % tarkoittaa, että tyypillisenä vuonna kurssi liikkuu noin ±20 %:n sisällä. Korkeampi volatiliteetti tarkoittaa suurempia liikkeitä molempiin suuntiin.';

  @override
  String get techNote =>
      'Laskettu päivittäisistä päätöskursseista. Tekniset signaalit kuvaavat menneisyyttä, eivät tulevaisuutta.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above omistusta $count:sta yli 200 päivän keskiarvonsa';
  }

  @override
  String get watchSignalsTitle => 'Signaalit';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · ylimyyty';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · yliostettu';
  }

  @override
  String get signalCrossedAbove => 'nousi 200 päivän keskiarvon yläpuolelle';

  @override
  String get signalCrossedBelow => 'laski 200 päivän keskiarvon alapuolelle';

  @override
  String get signalAlertsTitle => 'Ilmoitukset teknisistä signaaleista';

  @override
  String get signalAlertsSubtitle =>
      'Kerran päivässä, kun seuraamasi osake muuttuu ylimyydyksi tai yliostetuksi (RSI) tai sen kurssi leikkaa 200 päivän keskiarvon.';

  @override
  String get signalAlertsNotification => 'Tekniset signaalit';

  @override
  String get glossaryPageTitle => 'Sanasto';

  @override
  String get glossaryPageSubtitle =>
      'Selkeät selitykset jokaiselle sovelluksen luvulle, P/E:stä RSI:hin';

  @override
  String get glossarySearchHint => 'Hae sanastosta';

  @override
  String get portfolioCash => 'Käteinen';

  @override
  String get portfolioCashTitle => 'Käteissaldo';

  @override
  String get portfolioCashHint =>
      'Sijoittamaton raha välittäjälläsi, valuutoittain. Lasketaan kokonaisarvoon ja jakaumaan; ei tuottoon.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Summa ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Aseta käteissaldo';

  @override
  String get portfolioDividendsByMonth => 'Kuukausittain';

  @override
  String get dividendsLegendReceived => 'Saadut';

  @override
  String get dividendsLegendExpected => 'Odotetut';

  @override
  String get portfolioDividendsExpected => 'Odotettavissa seuraavaksi';

  @override
  String get portfolioDividendsExpectedNote =>
      'Arvio kirjaamiesi maksujen päivistä ja summista; yhtiöt voivat muuttaa niitä tai jättää ne maksamatta.';

  @override
  String portfolioDividendAround(String date) {
    return 'noin $date';
  }
}
