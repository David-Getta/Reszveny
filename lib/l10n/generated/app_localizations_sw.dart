// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

  @override
  String get homeTagline => 'Piga picha ya hisa na ujifunze kila kitu kuihusu.';

  @override
  String get homeHint =>
      'Hati ya hisa, skrini ya programu ya broker, gazeti au nembo ya kampuni – kitu chochote kinachotambulisha hisa.';

  @override
  String get takePhoto => 'Piga picha';

  @override
  String get chooseFromGallery => 'Chagua kutoka galeri';

  @override
  String get chooseImage => 'Chagua picha';

  @override
  String get enterTickerManually => 'Ingiza ticker mwenyewe';

  @override
  String get tickerInputLabel => 'Alama ya ticker';

  @override
  String get tickerInputHint => 'k.m. AAPL';

  @override
  String get lookUp => 'Tafuta';

  @override
  String demoModeBanner(String symbols) {
    return 'Hali ya onyesho – hakuna ufunguo wa data ya soko uliowekwa. Data ya mfano inapatikana kwa: $symbols.';
  }

  @override
  String get recognizing => 'Inachambua picha…';

  @override
  String get loadingData => 'Inapakia data…';

  @override
  String get noCandidatesTitle => 'Hakuna hisa iliyotambuliwa';

  @override
  String get noCandidatesBody =>
      'Hatukuweza kutambua hisa katika picha hii. Jaribu picha iliyo wazi zaidi, au ingiza ticker mwenyewe.';

  @override
  String get whatWeSaw => 'Tulichokiona';

  @override
  String get chooseCandidateTitle => 'Ulimaanisha hisa gani?';

  @override
  String confidencePercent(int percent) {
    return 'Uhakika $percent%';
  }

  @override
  String get settings => 'Mipangilio';

  @override
  String get language => 'Lugha';

  @override
  String get systemLanguage => 'Chaguo-msingi la mfumo';

  @override
  String get about => 'Kuhusu';

  @override
  String get disclaimer =>
      'Programu hii inatoa taarifa tu na si ushauri wa uwekezaji. Data inaweza kuchelewa au kuwa si sahihi.';

  @override
  String dataSource(String source) {
    return 'Chanzo cha data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Utambuzi: $source';
  }

  @override
  String get retry => 'Jaribu tena';

  @override
  String get cancel => 'Ghairi';

  @override
  String get ok => 'Sawa';

  @override
  String get close => 'Funga';

  @override
  String get errorGeneric => 'Hitilafu imetokea.';

  @override
  String get errorSectionUnavailable => 'Sehemu hii haikuweza kupakiwa.';

  @override
  String get notAvailable => 'haipo';

  @override
  String get sectionIdentity => 'Utambulisho';

  @override
  String get sectionPrice => 'Bei';

  @override
  String get sectionValuation => 'Uthamini';

  @override
  String get sectionFinancials => 'Taarifa za kifedha';

  @override
  String get sectionDividend => 'Gawio';

  @override
  String get sectionProfile => 'Wasifu wa kampuni';

  @override
  String get sectionAnalysts => 'Tathmini za wachambuzi';

  @override
  String get sectionNews => 'Habari';

  @override
  String get sectionRecognition => 'Maelezo ya utambuzi';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Soko la hisa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Sarafu';

  @override
  String get labelCountry => 'Nchi';

  @override
  String get labelIndustry => 'Tasnia';

  @override
  String get labelSector => 'Sekta';

  @override
  String get labelWebsite => 'Tovuti';

  @override
  String get labelIpoDate => 'Tarehe ya IPO';

  @override
  String get labelMarketCap => 'Thamani ya soko';

  @override
  String get labelSharesOutstanding => 'Hisa zilizotolewa';

  @override
  String get labelEmployees => 'Wafanyakazi';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Makao makuu';

  @override
  String get labelDescription => 'Maelezo';

  @override
  String get labelLastPrice => 'Bei ya mwisho';

  @override
  String get labelChange => 'Badiliko';

  @override
  String get labelOpen => 'Ufunguzi';

  @override
  String get labelDayHigh => 'Juu ya siku';

  @override
  String get labelDayLow => 'Chini ya siku';

  @override
  String get labelPreviousClose => 'Kufunga kwa awali';

  @override
  String get labelWeek52High => 'Juu ya wiki 52';

  @override
  String get labelWeek52Low => 'Chini ya wiki 52';

  @override
  String get labelAverageVolume10d => 'Wastani wa kiasi (siku 10)';

  @override
  String updatedAt(String time) {
    return 'Imesasishwa $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ya nyuma)';

  @override
  String get labelPeForward => 'P/E (ya mbele)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / mtiririko huru wa fedha';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Mapato (TTM)';

  @override
  String get labelNetIncomeTtm => 'Faida halisi (TTM)';

  @override
  String get labelGrossMargin => 'Ukingo wa faida ghafi';

  @override
  String get labelOperatingMargin => 'Ukingo wa uendeshaji';

  @override
  String get labelNetMargin => 'Ukingo halisi';

  @override
  String get labelRoe => 'Faida kwa mtaji';

  @override
  String get labelRoa => 'Faida kwa mali';

  @override
  String get labelDebtToEquity => 'Deni / mtaji';

  @override
  String get labelCurrentRatio => 'Uwiano wa sasa';

  @override
  String get labelRevenueGrowth => 'Ukuaji wa mapato (YoY)';

  @override
  String get labelEpsGrowth => 'Ukuaji wa EPS (YoY)';

  @override
  String get labelDividendYield => 'Mavuno ya gawio';

  @override
  String get labelDividendPerShare => 'Gawio kwa hisa';

  @override
  String get labelPayoutRatio => 'Uwiano wa malipo';

  @override
  String get labelConsensus => 'Makubaliano';

  @override
  String get ratingStrongBuy => 'Nunua kwa nguvu';

  @override
  String get ratingBuy => 'Nunua';

  @override
  String get ratingHold => 'Shikilia';

  @override
  String get ratingSell => 'Uza';

  @override
  String get ratingStrongSell => 'Uza kwa nguvu';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wachambuzi $count',
      one: 'Mchambuzi 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Kipindi: $period';
  }

  @override
  String get noNews => 'Hakuna habari za hivi karibuni.';

  @override
  String get openArticle => 'Fungua makala';

  @override
  String get openLinkFailed => 'Imeshindwa kufungua kiungo.';

  @override
  String get recognitionSummary => 'Muhtasari';

  @override
  String get recognitionEvidence => 'Kwa nini tunadhani hivyo';

  @override
  String get recognitionRawText => 'Maandishi yaliyosomwa kutoka picha';

  @override
  String get errMissingAnthropicKey =>
      'Utambuzi wa picha haujasanidiwa (hakuna ANTHROPIC_API_KEY). Ingiza ticker mwenyewe.';

  @override
  String get errRecognitionUnreachable =>
      'Imeshindwa kufikia huduma ya utambuzi. Angalia muunganisho wako wa intaneti.';

  @override
  String errRecognitionHttp(String status) {
    return 'Huduma ya utambuzi imerudisha hitilafu (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Huduma ya utambuzi haikuweza kuchakata picha hii.';

  @override
  String get errRecognitionTruncated =>
      'Jibu la utambuzi lilikatizwa. Tafadhali jaribu tena.';

  @override
  String get errRecognitionBadResponse =>
      'Jibu lisilotarajiwa kutoka huduma ya utambuzi.';

  @override
  String get errRecognitionEmpty => 'Huduma ya utambuzi imerudisha jibu tupu.';

  @override
  String get errMissingFinnhubKey =>
      'Data ya soko haijasanidiwa (hakuna FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Imeshindwa kufikia huduma ya data ya soko. Angalia muunganisho wako wa intaneti.';

  @override
  String get errMarketRateLimited =>
      'Maombi mengi mno kwa huduma ya data ya soko. Tafadhali subiri dakika moja.';

  @override
  String errMarketHttp(String status) {
    return 'Huduma ya data ya soko imerudisha hitilafu (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Jibu lisilotarajiwa kutoka huduma ya data ya soko.';

  @override
  String errNoQuote(String symbol) {
    return 'Hakuna data ya bei iliyopatikana kwa $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Hakuna wasifu wa kampuni uliopatikana kwa $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Hali ya onyesho inaauni $symbols tu. Ongeza FINNHUB_API_KEY kwa data ya moja kwa moja.';
  }

  @override
  String errUnknown(String detail) {
    return 'Hitilafu imetokea: $detail';
  }

  @override
  String get newSearch => 'Utafutaji mpya';

  @override
  String get recentSearches => 'Hivi karibuni';

  @override
  String get noRecentSearches => 'Bado hakuna utafutaji wa hivi karibuni.';

  @override
  String get clearRecent => 'Futa za hivi karibuni';

  @override
  String get greeting => 'Tuangalie hisa gani?';

  @override
  String get searchHint => 'Ticker au jina la kampuni';

  @override
  String get attachImage => 'Ambatisha picha';

  @override
  String get searchResultsTitle => 'Matokeo ya utafutaji';

  @override
  String errNoResults(String query) {
    return 'Hakuna hisa zilizopatikana kwa “$query”.';
  }

  @override
  String get quickBarHint => 'Andika ticker au jina la kampuni…';

  @override
  String get openFullWindow => 'Fungua dirisha';

  @override
  String hotkeyHint(String shortcut) {
    return 'Bonyeza $shortcut mahali popote kuita Reszveny.';
  }

  @override
  String get trayOpen => 'Fungua Reszveny';

  @override
  String get trayQuickSearch => 'Utafutaji wa haraka';

  @override
  String get trayQuit => 'Ondoka';

  @override
  String get appearance => 'Mwonekano';

  @override
  String get themeSystem => 'Mfumo';

  @override
  String get themeDark => 'Giza';

  @override
  String get themeLight => 'Mwanga';

  @override
  String get back => 'Rudi';

  @override
  String get aiSectionTitle => 'Uchambuzi wa AI';

  @override
  String get aiIntro =>
      'Muhtasari wa kina ulioandikwa na AI: muhtasari wa habari za hivi karibuni, biashara, uimara, hatari na mambo yaliyofichika, uthamini na mambo ya kufuatilia.';

  @override
  String get aiGenerate => 'Tengeneza uchambuzi';

  @override
  String get aiRegenerate => 'Tengeneza upya';

  @override
  String get aiGenerating =>
      'Inaandaa uchambuzi… hili linaweza kuchukua dakika moja au mbili.';

  @override
  String get aiSources => 'Vyanzo';

  @override
  String aiGeneratedAt(String time) {
    return 'Imetengenezwa $time';
  }

  @override
  String get aiDisclaimer =>
      'Uchambuzi uliotengenezwa na AI kwa kutumia data ya umma na habari za hivi karibuni. Unaweza kuwa na makosa au kuwa umepitwa na wakati, na si ushauri wa uwekezaji.';

  @override
  String get errAiNotConfigured =>
      'Uchambuzi wa AI haujasanidiwa (hakuna ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Imeshindwa kufikia huduma ya AI. Angalia muunganisho wako wa intaneti.';

  @override
  String errAiHttp(String status) {
    return 'Huduma ya AI imerudisha hitilafu (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Huduma ya AI imekataa kuchambua hisa hii.';

  @override
  String get errAiBadResponse => 'Jibu lisilotarajiwa kutoka huduma ya AI.';

  @override
  String get sectionChart => 'Chati ya bei';

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
  String get chartUnavailable =>
      'Historia ya bei haipatikani kutoka chanzo cha data cha sasa.';

  @override
  String get sectionStatements => 'Taarifa za fedha (za mwaka)';

  @override
  String get labelFiscalYear => 'Mwaka wa fedha';

  @override
  String get labelRevenue => 'Mapato';

  @override
  String get labelNetIncome => 'Faida halisi';

  @override
  String get labelTotalAssets => 'Jumla ya mali';

  @override
  String get labelTotalLiabilities => 'Jumla ya madeni';

  @override
  String get labelEquity => 'Mtaji wa wanahisa';

  @override
  String get labelOperatingCashFlow => 'Mtiririko wa fedha wa uendeshaji';

  @override
  String get statementsUnavailable =>
      'Taarifa za fedha zilizoripotiwa hazipatikani kwa hisa hii.';

  @override
  String get launchAtLogin => 'Anzisha wakati wa kuingia';

  @override
  String get hotkeyLabel => 'Njia ya mkato ya jumla';

  @override
  String get hotkeyRecordHint =>
      'Bofya hapa, kisha bonyeza mchanganyiko mpya wa vitufe';

  @override
  String get hotkeyReset => 'Rejesha chaguo-msingi';

  @override
  String get pasteImage => 'Bandika picha kutoka ubao wa kunakili';

  @override
  String get errClipboardNoImage => 'Hakuna picha kwenye ubao wa kunakili.';

  @override
  String get favorites => 'Vipendwa';

  @override
  String get addToFavorites => 'Ongeza kwenye vipendwa';

  @override
  String get removeFromFavorites => 'Ondoa kwenye vipendwa';

  @override
  String get noFavorites =>
      'Bado hakuna vipendwa. Gusa nyota kwenye hisa ili kuiongeza.';
}
