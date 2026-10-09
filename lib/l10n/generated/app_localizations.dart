import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ha.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_jv.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bg'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('ha'),
    Locale('hr'),
    Locale('hu'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('jv'),
    Locale('ko'),
    Locale('lt'),
    Locale('nb'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sk'),
    Locale('sq'),
    Locale('sr'),
    Locale('sv'),
    Locale('sw'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(
      languageCode: 'zh',
      countryCode: 'HK',
      scriptCode: 'Hant',
    ),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Reszveny'**
  String get appTitle;

  /// No description provided for @homeTagline.
  ///
  /// In en, this message translates to:
  /// **'Photograph a stock and learn everything about it.'**
  String get homeTagline;

  /// No description provided for @homeHint.
  ///
  /// In en, this message translates to:
  /// **'A share certificate, a brokerage app screen, a newspaper or a company logo – anything that identifies a stock.'**
  String get homeHint;

  /// No description provided for @takePhoto.
  ///
  /// In en, this message translates to:
  /// **'Take a photo'**
  String get takePhoto;

  /// No description provided for @chooseFromGallery.
  ///
  /// In en, this message translates to:
  /// **'Choose from gallery'**
  String get chooseFromGallery;

  /// No description provided for @chooseImage.
  ///
  /// In en, this message translates to:
  /// **'Choose an image'**
  String get chooseImage;

  /// No description provided for @enterTickerManually.
  ///
  /// In en, this message translates to:
  /// **'Enter ticker manually'**
  String get enterTickerManually;

  /// No description provided for @tickerInputLabel.
  ///
  /// In en, this message translates to:
  /// **'Ticker symbol'**
  String get tickerInputLabel;

  /// No description provided for @tickerInputHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. AAPL'**
  String get tickerInputHint;

  /// No description provided for @lookUp.
  ///
  /// In en, this message translates to:
  /// **'Look up'**
  String get lookUp;

  /// No description provided for @demoModeBanner.
  ///
  /// In en, this message translates to:
  /// **'Demo mode – no market data key configured. Sample data is available for: {symbols}.'**
  String demoModeBanner(String symbols);

  /// No description provided for @recognizing.
  ///
  /// In en, this message translates to:
  /// **'Analysing the image…'**
  String get recognizing;

  /// No description provided for @loadingData.
  ///
  /// In en, this message translates to:
  /// **'Loading data…'**
  String get loadingData;

  /// No description provided for @noCandidatesTitle.
  ///
  /// In en, this message translates to:
  /// **'No stock recognised'**
  String get noCandidatesTitle;

  /// No description provided for @noCandidatesBody.
  ///
  /// In en, this message translates to:
  /// **'We could not identify a stock in this image. Try a sharper photo, or enter the ticker manually.'**
  String get noCandidatesBody;

  /// No description provided for @whatWeSaw.
  ///
  /// In en, this message translates to:
  /// **'What we saw'**
  String get whatWeSaw;

  /// No description provided for @chooseCandidateTitle.
  ///
  /// In en, this message translates to:
  /// **'Which stock did you mean?'**
  String get chooseCandidateTitle;

  /// No description provided for @confidencePercent.
  ///
  /// In en, this message translates to:
  /// **'{percent}% confidence'**
  String confidencePercent(int percent);

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @systemLanguage.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get systemLanguage;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @disclaimer.
  ///
  /// In en, this message translates to:
  /// **'This app provides information only and is not investment advice. Data may be delayed or inaccurate.'**
  String get disclaimer;

  /// No description provided for @dataSource.
  ///
  /// In en, this message translates to:
  /// **'Data source: {source}'**
  String dataSource(String source);

  /// No description provided for @recognizerSource.
  ///
  /// In en, this message translates to:
  /// **'Recognition: {source}'**
  String recognizerSource(String source);

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @errorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong.'**
  String get errorGeneric;

  /// No description provided for @errorSectionUnavailable.
  ///
  /// In en, this message translates to:
  /// **'This section could not be loaded.'**
  String get errorSectionUnavailable;

  /// No description provided for @notAvailable.
  ///
  /// In en, this message translates to:
  /// **'n/a'**
  String get notAvailable;

  /// No description provided for @sectionIdentity.
  ///
  /// In en, this message translates to:
  /// **'Identification'**
  String get sectionIdentity;

  /// No description provided for @sectionPrice.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get sectionPrice;

  /// No description provided for @sectionValuation.
  ///
  /// In en, this message translates to:
  /// **'Valuation'**
  String get sectionValuation;

  /// No description provided for @sectionFinancials.
  ///
  /// In en, this message translates to:
  /// **'Financials'**
  String get sectionFinancials;

  /// No description provided for @sectionDividend.
  ///
  /// In en, this message translates to:
  /// **'Dividend'**
  String get sectionDividend;

  /// No description provided for @sectionProfile.
  ///
  /// In en, this message translates to:
  /// **'Company profile'**
  String get sectionProfile;

  /// No description provided for @sectionAnalysts.
  ///
  /// In en, this message translates to:
  /// **'Analyst ratings'**
  String get sectionAnalysts;

  /// No description provided for @sectionNews.
  ///
  /// In en, this message translates to:
  /// **'News'**
  String get sectionNews;

  /// No description provided for @sectionRecognition.
  ///
  /// In en, this message translates to:
  /// **'Recognition details'**
  String get sectionRecognition;

  /// No description provided for @labelSymbol.
  ///
  /// In en, this message translates to:
  /// **'Ticker'**
  String get labelSymbol;

  /// No description provided for @labelExchange.
  ///
  /// In en, this message translates to:
  /// **'Exchange'**
  String get labelExchange;

  /// No description provided for @labelIsin.
  ///
  /// In en, this message translates to:
  /// **'ISIN'**
  String get labelIsin;

  /// No description provided for @labelCurrency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get labelCurrency;

  /// No description provided for @labelCountry.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get labelCountry;

  /// No description provided for @labelIndustry.
  ///
  /// In en, this message translates to:
  /// **'Industry'**
  String get labelIndustry;

  /// No description provided for @labelSector.
  ///
  /// In en, this message translates to:
  /// **'Sector'**
  String get labelSector;

  /// No description provided for @labelWebsite.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get labelWebsite;

  /// No description provided for @labelIpoDate.
  ///
  /// In en, this message translates to:
  /// **'IPO date'**
  String get labelIpoDate;

  /// No description provided for @labelMarketCap.
  ///
  /// In en, this message translates to:
  /// **'Market cap'**
  String get labelMarketCap;

  /// No description provided for @labelSharesOutstanding.
  ///
  /// In en, this message translates to:
  /// **'Shares outstanding'**
  String get labelSharesOutstanding;

  /// No description provided for @labelEmployees.
  ///
  /// In en, this message translates to:
  /// **'Employees'**
  String get labelEmployees;

  /// No description provided for @labelCeo.
  ///
  /// In en, this message translates to:
  /// **'CEO'**
  String get labelCeo;

  /// No description provided for @labelHeadquarters.
  ///
  /// In en, this message translates to:
  /// **'Headquarters'**
  String get labelHeadquarters;

  /// No description provided for @labelDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get labelDescription;

  /// No description provided for @labelLastPrice.
  ///
  /// In en, this message translates to:
  /// **'Last price'**
  String get labelLastPrice;

  /// No description provided for @labelChange.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get labelChange;

  /// No description provided for @labelOpen.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get labelOpen;

  /// No description provided for @labelDayHigh.
  ///
  /// In en, this message translates to:
  /// **'Day high'**
  String get labelDayHigh;

  /// No description provided for @labelDayLow.
  ///
  /// In en, this message translates to:
  /// **'Day low'**
  String get labelDayLow;

  /// No description provided for @labelPreviousClose.
  ///
  /// In en, this message translates to:
  /// **'Previous close'**
  String get labelPreviousClose;

  /// No description provided for @labelWeek52High.
  ///
  /// In en, this message translates to:
  /// **'52-week high'**
  String get labelWeek52High;

  /// No description provided for @labelWeek52Low.
  ///
  /// In en, this message translates to:
  /// **'52-week low'**
  String get labelWeek52Low;

  /// No description provided for @labelAverageVolume10d.
  ///
  /// In en, this message translates to:
  /// **'Avg. volume (10 days)'**
  String get labelAverageVolume10d;

  /// No description provided for @updatedAt.
  ///
  /// In en, this message translates to:
  /// **'Updated {time}'**
  String updatedAt(String time);

  /// No description provided for @labelPeTrailing.
  ///
  /// In en, this message translates to:
  /// **'P/E (trailing)'**
  String get labelPeTrailing;

  /// No description provided for @labelPeForward.
  ///
  /// In en, this message translates to:
  /// **'P/E (forward)'**
  String get labelPeForward;

  /// No description provided for @labelPb.
  ///
  /// In en, this message translates to:
  /// **'P/B'**
  String get labelPb;

  /// No description provided for @labelPs.
  ///
  /// In en, this message translates to:
  /// **'P/S'**
  String get labelPs;

  /// No description provided for @labelEvToFcf.
  ///
  /// In en, this message translates to:
  /// **'EV / free cash flow'**
  String get labelEvToFcf;

  /// No description provided for @labelPeg.
  ///
  /// In en, this message translates to:
  /// **'PEG'**
  String get labelPeg;

  /// No description provided for @labelEps.
  ///
  /// In en, this message translates to:
  /// **'EPS (TTM)'**
  String get labelEps;

  /// No description provided for @labelBeta.
  ///
  /// In en, this message translates to:
  /// **'Beta'**
  String get labelBeta;

  /// No description provided for @labelRevenueTtm.
  ///
  /// In en, this message translates to:
  /// **'Revenue (TTM)'**
  String get labelRevenueTtm;

  /// No description provided for @labelNetIncomeTtm.
  ///
  /// In en, this message translates to:
  /// **'Net income (TTM)'**
  String get labelNetIncomeTtm;

  /// No description provided for @labelGrossMargin.
  ///
  /// In en, this message translates to:
  /// **'Gross margin'**
  String get labelGrossMargin;

  /// No description provided for @labelOperatingMargin.
  ///
  /// In en, this message translates to:
  /// **'Operating margin'**
  String get labelOperatingMargin;

  /// No description provided for @labelNetMargin.
  ///
  /// In en, this message translates to:
  /// **'Net margin'**
  String get labelNetMargin;

  /// No description provided for @labelRoe.
  ///
  /// In en, this message translates to:
  /// **'Return on equity'**
  String get labelRoe;

  /// No description provided for @labelRoa.
  ///
  /// In en, this message translates to:
  /// **'Return on assets'**
  String get labelRoa;

  /// No description provided for @labelDebtToEquity.
  ///
  /// In en, this message translates to:
  /// **'Debt / equity'**
  String get labelDebtToEquity;

  /// No description provided for @labelCurrentRatio.
  ///
  /// In en, this message translates to:
  /// **'Current ratio'**
  String get labelCurrentRatio;

  /// No description provided for @labelRevenueGrowth.
  ///
  /// In en, this message translates to:
  /// **'Revenue growth (YoY)'**
  String get labelRevenueGrowth;

  /// No description provided for @labelEpsGrowth.
  ///
  /// In en, this message translates to:
  /// **'EPS growth (YoY)'**
  String get labelEpsGrowth;

  /// No description provided for @labelDividendYield.
  ///
  /// In en, this message translates to:
  /// **'Dividend yield'**
  String get labelDividendYield;

  /// No description provided for @labelDividendPerShare.
  ///
  /// In en, this message translates to:
  /// **'Dividend per share'**
  String get labelDividendPerShare;

  /// No description provided for @labelPayoutRatio.
  ///
  /// In en, this message translates to:
  /// **'Payout ratio'**
  String get labelPayoutRatio;

  /// No description provided for @labelConsensus.
  ///
  /// In en, this message translates to:
  /// **'Consensus'**
  String get labelConsensus;

  /// No description provided for @ratingStrongBuy.
  ///
  /// In en, this message translates to:
  /// **'Strong buy'**
  String get ratingStrongBuy;

  /// No description provided for @ratingBuy.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get ratingBuy;

  /// No description provided for @ratingHold.
  ///
  /// In en, this message translates to:
  /// **'Hold'**
  String get ratingHold;

  /// No description provided for @ratingSell.
  ///
  /// In en, this message translates to:
  /// **'Sell'**
  String get ratingSell;

  /// No description provided for @ratingStrongSell.
  ///
  /// In en, this message translates to:
  /// **'Strong sell'**
  String get ratingStrongSell;

  /// No description provided for @analystCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 analyst} other{{count} analysts}}'**
  String analystCount(int count);

  /// No description provided for @analystPeriod.
  ///
  /// In en, this message translates to:
  /// **'Period: {period}'**
  String analystPeriod(String period);

  /// No description provided for @noNews.
  ///
  /// In en, this message translates to:
  /// **'No recent news.'**
  String get noNews;

  /// No description provided for @openArticle.
  ///
  /// In en, this message translates to:
  /// **'Open article'**
  String get openArticle;

  /// No description provided for @openLinkFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not open the link.'**
  String get openLinkFailed;

  /// No description provided for @recognitionSummary.
  ///
  /// In en, this message translates to:
  /// **'Summary'**
  String get recognitionSummary;

  /// No description provided for @recognitionEvidence.
  ///
  /// In en, this message translates to:
  /// **'Why we think so'**
  String get recognitionEvidence;

  /// No description provided for @recognitionRawText.
  ///
  /// In en, this message translates to:
  /// **'Text read from the image'**
  String get recognitionRawText;

  /// No description provided for @errMissingAnthropicKey.
  ///
  /// In en, this message translates to:
  /// **'Image recognition is not configured (no ANTHROPIC_API_KEY). Enter the ticker manually.'**
  String get errMissingAnthropicKey;

  /// No description provided for @errRecognitionUnreachable.
  ///
  /// In en, this message translates to:
  /// **'Could not reach the recognition service. Check your internet connection.'**
  String get errRecognitionUnreachable;

  /// No description provided for @errRecognitionHttp.
  ///
  /// In en, this message translates to:
  /// **'The recognition service returned an error (HTTP {status}).'**
  String errRecognitionHttp(String status);

  /// No description provided for @errRecognitionRefused.
  ///
  /// In en, this message translates to:
  /// **'The recognition service could not process this image.'**
  String get errRecognitionRefused;

  /// No description provided for @errRecognitionTruncated.
  ///
  /// In en, this message translates to:
  /// **'The recognition response was cut off. Please try again.'**
  String get errRecognitionTruncated;

  /// No description provided for @errRecognitionBadResponse.
  ///
  /// In en, this message translates to:
  /// **'Unexpected response from the recognition service.'**
  String get errRecognitionBadResponse;

  /// No description provided for @errRecognitionEmpty.
  ///
  /// In en, this message translates to:
  /// **'The recognition service returned an empty response.'**
  String get errRecognitionEmpty;

  /// No description provided for @errMissingFinnhubKey.
  ///
  /// In en, this message translates to:
  /// **'Market data is not configured (no FINNHUB_API_KEY).'**
  String get errMissingFinnhubKey;

  /// No description provided for @errMarketUnreachable.
  ///
  /// In en, this message translates to:
  /// **'Could not reach the market data service. Check your internet connection.'**
  String get errMarketUnreachable;

  /// No description provided for @errMarketRateLimited.
  ///
  /// In en, this message translates to:
  /// **'Too many requests to the market data service. Please wait a minute.'**
  String get errMarketRateLimited;

  /// No description provided for @errMarketHttp.
  ///
  /// In en, this message translates to:
  /// **'The market data service returned an error (HTTP {status}).'**
  String errMarketHttp(String status);

  /// No description provided for @errMarketBadResponse.
  ///
  /// In en, this message translates to:
  /// **'Unexpected response from the market data service.'**
  String get errMarketBadResponse;

  /// No description provided for @errNoQuote.
  ///
  /// In en, this message translates to:
  /// **'No price data found for {symbol}.'**
  String errNoQuote(String symbol);

  /// No description provided for @errNoProfile.
  ///
  /// In en, this message translates to:
  /// **'No company profile found for {symbol}.'**
  String errNoProfile(String symbol);

  /// No description provided for @errDemoUnsupportedSymbol.
  ///
  /// In en, this message translates to:
  /// **'Demo mode only supports {symbols}. Add a FINNHUB_API_KEY for live data.'**
  String errDemoUnsupportedSymbol(String symbols);

  /// No description provided for @errUnknown.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong: {detail}'**
  String errUnknown(String detail);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'bg',
    'ca',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'fa',
    'fi',
    'fil',
    'fr',
    'ha',
    'hr',
    'hu',
    'id',
    'it',
    'ja',
    'jv',
    'ko',
    'lt',
    'nb',
    'nl',
    'pl',
    'pt',
    'ro',
    'ru',
    'sk',
    'sq',
    'sr',
    'sv',
    'sw',
    'tr',
    'uk',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script+country codes are specified.
  switch (locale.toString()) {
    case 'zh_Hant_HK':
      return AppLocalizationsZhHantHk();
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bg':
      return AppLocalizationsBg();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'ha':
      return AppLocalizationsHa();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'jv':
      return AppLocalizationsJv();
    case 'ko':
      return AppLocalizationsKo();
    case 'lt':
      return AppLocalizationsLt();
    case 'nb':
      return AppLocalizationsNb();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'sk':
      return AppLocalizationsSk();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
