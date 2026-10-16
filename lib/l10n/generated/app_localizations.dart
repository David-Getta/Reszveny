import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_ak.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_as.dart';
import 'app_localizations_az.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bho.dart';
import 'app_localizations_bm.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bo.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_ceb.dart';
import 'app_localizations_ckb.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_ee.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_ff.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gn.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_ha.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hil.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_ht.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_ig.dart';
import 'app_localizations_ilo.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_jv.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kab.dart';
import 'app_localizations_kg.dart';
import 'app_localizations_ki.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ku.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_lg.dart';
import 'app_localizations_ln.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lua.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mai.dart';
import 'app_localizations_mg.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mos.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_my.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_nso.dart';
import 'app_localizations_ny.dart';
import 'app_localizations_om.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pcm.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ps.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_qu.dart';
import 'app_localizations_rn.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_rw.dart';
import 'app_localizations_sd.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sn.dart';
import 'app_localizations_so.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_st.dart';
import 'app_localizations_su.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_tg.dart';
import 'app_localizations_th.dart';
import 'app_localizations_ti.dart';
import 'app_localizations_tk.dart';
import 'app_localizations_tn.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ts.dart';
import 'app_localizations_tt.dart';
import 'app_localizations_ug.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_uz.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_wo.dart';
import 'app_localizations_xh.dart';
import 'app_localizations_yo.dart';
import 'app_localizations_zh.dart';
import 'app_localizations_zu.dart';

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
    Locale('af'),
    Locale('ak'),
    Locale('am'),
    Locale('ar'),
    Locale('as'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('bho'),
    Locale('bm'),
    Locale('bn'),
    Locale('bo'),
    Locale('bs'),
    Locale('ca'),
    Locale('ceb'),
    Locale('ckb'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('ee'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('ff'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('gl'),
    Locale('gn'),
    Locale('gu'),
    Locale('ha'),
    Locale('he'),
    Locale('hi'),
    Locale('hil'),
    Locale('hr'),
    Locale('ht'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('ig'),
    Locale('ilo'),
    Locale('it'),
    Locale('ja'),
    Locale('jv'),
    Locale('ka'),
    Locale('kab'),
    Locale('kg'),
    Locale('ki'),
    Locale('kk'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('ku'),
    Locale('ky'),
    Locale('lg'),
    Locale('ln'),
    Locale('lo'),
    Locale('lt'),
    Locale('lua'),
    Locale('lv'),
    Locale('mai'),
    Locale('mg'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('mos'),
    Locale('mr'),
    Locale('ms'),
    Locale('my'),
    Locale('nb'),
    Locale('ne'),
    Locale('nl'),
    Locale('nso'),
    Locale('ny'),
    Locale('om'),
    Locale('or'),
    Locale('pa'),
    Locale('pcm'),
    Locale('pl'),
    Locale('ps'),
    Locale('pt'),
    Locale('qu'),
    Locale('rn'),
    Locale('ro'),
    Locale('ru'),
    Locale('rw'),
    Locale('sd'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sn'),
    Locale('so'),
    Locale('sq'),
    Locale('sr'),
    Locale('st'),
    Locale('su'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('tg'),
    Locale('th'),
    Locale('ti'),
    Locale('tk'),
    Locale('tn'),
    Locale('tr'),
    Locale('ts'),
    Locale('tt'),
    Locale('ug'),
    Locale('uk'),
    Locale('ur'),
    Locale('uz'),
    Locale('vi'),
    Locale('wo'),
    Locale('xh'),
    Locale('yo'),
    Locale('zh'),
    Locale.fromSubtags(
      languageCode: 'zh',
      countryCode: 'HK',
      scriptCode: 'Hant',
    ),
    Locale('zu'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'WhatStock'**
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

  /// No description provided for @newSearch.
  ///
  /// In en, this message translates to:
  /// **'New search'**
  String get newSearch;

  /// No description provided for @recentSearches.
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get recentSearches;

  /// No description provided for @noRecentSearches.
  ///
  /// In en, this message translates to:
  /// **'No recent searches yet.'**
  String get noRecentSearches;

  /// No description provided for @clearRecent.
  ///
  /// In en, this message translates to:
  /// **'Clear recent'**
  String get clearRecent;

  /// No description provided for @greeting.
  ///
  /// In en, this message translates to:
  /// **'Which stock shall we look at?'**
  String get greeting;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Ticker or company name'**
  String get searchHint;

  /// No description provided for @attachImage.
  ///
  /// In en, this message translates to:
  /// **'Attach an image'**
  String get attachImage;

  /// No description provided for @searchResultsTitle.
  ///
  /// In en, this message translates to:
  /// **'Search results'**
  String get searchResultsTitle;

  /// No description provided for @errNoResults.
  ///
  /// In en, this message translates to:
  /// **'No stocks found for “{query}”.'**
  String errNoResults(String query);

  /// No description provided for @quickBarHint.
  ///
  /// In en, this message translates to:
  /// **'Type a ticker or company name…'**
  String get quickBarHint;

  /// No description provided for @openFullWindow.
  ///
  /// In en, this message translates to:
  /// **'Open window'**
  String get openFullWindow;

  /// No description provided for @hotkeyHint.
  ///
  /// In en, this message translates to:
  /// **'Press {shortcut} anywhere to summon WhatStock.'**
  String hotkeyHint(String shortcut);

  /// No description provided for @trayOpen.
  ///
  /// In en, this message translates to:
  /// **'Open WhatStock'**
  String get trayOpen;

  /// No description provided for @trayQuickSearch.
  ///
  /// In en, this message translates to:
  /// **'Quick search'**
  String get trayQuickSearch;

  /// No description provided for @trayQuit.
  ///
  /// In en, this message translates to:
  /// **'Quit'**
  String get trayQuit;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @themeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeSystem;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @aiSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'AI analysis'**
  String get aiSectionTitle;

  /// No description provided for @aiIntro.
  ///
  /// In en, this message translates to:
  /// **'A detailed, AI-written overview: summary of recent news, the business, strengths, risks and hidden factors, valuation, a price outlook with scenarios from psychological, sociological, technical and macro angles, and what to watch.'**
  String get aiIntro;

  /// No description provided for @aiGenerate.
  ///
  /// In en, this message translates to:
  /// **'Generate analysis'**
  String get aiGenerate;

  /// No description provided for @aiRegenerate.
  ///
  /// In en, this message translates to:
  /// **'Regenerate'**
  String get aiRegenerate;

  /// No description provided for @aiGenerating.
  ///
  /// In en, this message translates to:
  /// **'Preparing the analysis… this can take a minute or two.'**
  String get aiGenerating;

  /// No description provided for @aiSources.
  ///
  /// In en, this message translates to:
  /// **'Sources'**
  String get aiSources;

  /// No description provided for @aiGeneratedAt.
  ///
  /// In en, this message translates to:
  /// **'Generated {time}'**
  String aiGeneratedAt(String time);

  /// No description provided for @aiDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'AI-generated analysis based on public data and recent news. It may contain errors or be out of date, and it is not investment advice.'**
  String get aiDisclaimer;

  /// No description provided for @errAiNotConfigured.
  ///
  /// In en, this message translates to:
  /// **'AI analysis is not configured (no ANTHROPIC_API_KEY).'**
  String get errAiNotConfigured;

  /// No description provided for @errAiUnreachable.
  ///
  /// In en, this message translates to:
  /// **'Could not reach the AI service. Check your internet connection.'**
  String get errAiUnreachable;

  /// No description provided for @errAiHttp.
  ///
  /// In en, this message translates to:
  /// **'The AI service returned an error (HTTP {status}).'**
  String errAiHttp(String status);

  /// No description provided for @errAiRefused.
  ///
  /// In en, this message translates to:
  /// **'The AI service declined to analyse this stock.'**
  String get errAiRefused;

  /// No description provided for @errAiBadResponse.
  ///
  /// In en, this message translates to:
  /// **'Unexpected response from the AI service.'**
  String get errAiBadResponse;

  /// No description provided for @sectionChart.
  ///
  /// In en, this message translates to:
  /// **'Price chart'**
  String get sectionChart;

  /// No description provided for @rangeOneWeek.
  ///
  /// In en, this message translates to:
  /// **'1W'**
  String get rangeOneWeek;

  /// No description provided for @rangeOneMonth.
  ///
  /// In en, this message translates to:
  /// **'1M'**
  String get rangeOneMonth;

  /// No description provided for @rangeThreeMonths.
  ///
  /// In en, this message translates to:
  /// **'3M'**
  String get rangeThreeMonths;

  /// No description provided for @rangeOneYear.
  ///
  /// In en, this message translates to:
  /// **'1Y'**
  String get rangeOneYear;

  /// No description provided for @rangeFiveYears.
  ///
  /// In en, this message translates to:
  /// **'5Y'**
  String get rangeFiveYears;

  /// No description provided for @chartUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Price history is not available from the current data source.'**
  String get chartUnavailable;

  /// No description provided for @sectionStatements.
  ///
  /// In en, this message translates to:
  /// **'Financial statements (annual)'**
  String get sectionStatements;

  /// No description provided for @labelFiscalYear.
  ///
  /// In en, this message translates to:
  /// **'Fiscal year'**
  String get labelFiscalYear;

  /// No description provided for @labelRevenue.
  ///
  /// In en, this message translates to:
  /// **'Revenue'**
  String get labelRevenue;

  /// No description provided for @labelNetIncome.
  ///
  /// In en, this message translates to:
  /// **'Net income'**
  String get labelNetIncome;

  /// No description provided for @labelTotalAssets.
  ///
  /// In en, this message translates to:
  /// **'Total assets'**
  String get labelTotalAssets;

  /// No description provided for @labelTotalLiabilities.
  ///
  /// In en, this message translates to:
  /// **'Total liabilities'**
  String get labelTotalLiabilities;

  /// No description provided for @labelEquity.
  ///
  /// In en, this message translates to:
  /// **'Shareholders’ equity'**
  String get labelEquity;

  /// No description provided for @labelOperatingCashFlow.
  ///
  /// In en, this message translates to:
  /// **'Operating cash flow'**
  String get labelOperatingCashFlow;

  /// No description provided for @statementsUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Reported financial statements are not available for this stock.'**
  String get statementsUnavailable;

  /// No description provided for @launchAtLogin.
  ///
  /// In en, this message translates to:
  /// **'Launch at login'**
  String get launchAtLogin;

  /// No description provided for @hotkeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Global shortcut'**
  String get hotkeyLabel;

  /// No description provided for @hotkeyRecordHint.
  ///
  /// In en, this message translates to:
  /// **'Click here, then press the new key combination'**
  String get hotkeyRecordHint;

  /// No description provided for @hotkeyReset.
  ///
  /// In en, this message translates to:
  /// **'Reset to default'**
  String get hotkeyReset;

  /// No description provided for @pasteImage.
  ///
  /// In en, this message translates to:
  /// **'Paste image from clipboard'**
  String get pasteImage;

  /// No description provided for @errClipboardNoImage.
  ///
  /// In en, this message translates to:
  /// **'There is no image on the clipboard.'**
  String get errClipboardNoImage;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @addToFavorites.
  ///
  /// In en, this message translates to:
  /// **'Add to favorites'**
  String get addToFavorites;

  /// No description provided for @removeFromFavorites.
  ///
  /// In en, this message translates to:
  /// **'Remove from favorites'**
  String get removeFromFavorites;

  /// No description provided for @noFavorites.
  ///
  /// In en, this message translates to:
  /// **'No favorites yet. Tap the star on a stock to add it.'**
  String get noFavorites;

  /// No description provided for @displayCurrency.
  ///
  /// In en, this message translates to:
  /// **'Display currency'**
  String get displayCurrency;

  /// No description provided for @displayCurrencyNone.
  ///
  /// In en, this message translates to:
  /// **'Stock’s own currency only'**
  String get displayCurrencyNone;

  /// No description provided for @labelConverted.
  ///
  /// In en, this message translates to:
  /// **'≈ in {currency}'**
  String labelConverted(String currency);

  /// No description provided for @fxRateNote.
  ///
  /// In en, this message translates to:
  /// **'Rate: 1 {from} = {rate} {to} (ECB, {date})'**
  String fxRateNote(String from, String rate, String to, String date);

  /// No description provided for @updates.
  ///
  /// In en, this message translates to:
  /// **'Updates'**
  String get updates;

  /// No description provided for @currentVersion.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String currentVersion(String version);

  /// No description provided for @autoUpdate.
  ///
  /// In en, this message translates to:
  /// **'Install updates automatically'**
  String get autoUpdate;

  /// No description provided for @checkForUpdates.
  ///
  /// In en, this message translates to:
  /// **'Check for updates'**
  String get checkForUpdates;

  /// No description provided for @updateChecking.
  ///
  /// In en, this message translates to:
  /// **'Checking for updates…'**
  String get updateChecking;

  /// No description provided for @updateUpToDate.
  ///
  /// In en, this message translates to:
  /// **'You’re on the latest version.'**
  String get updateUpToDate;

  /// No description provided for @updateAvailable.
  ///
  /// In en, this message translates to:
  /// **'Version {version} is available.'**
  String updateAvailable(String version);

  /// No description provided for @updateDownloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading the update in the background…'**
  String get updateDownloading;

  /// No description provided for @updateDownloaded.
  ///
  /// In en, this message translates to:
  /// **'The update is ready. Restart to install it.'**
  String get updateDownloaded;

  /// No description provided for @updateNow.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get updateNow;

  /// No description provided for @restartNow.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get restartNow;

  /// No description provided for @updatesViaStore.
  ///
  /// In en, this message translates to:
  /// **'Updates arrive automatically through the app store.'**
  String get updatesViaStore;

  /// No description provided for @updateCheckFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not check for updates.'**
  String get updateCheckFailed;

  /// No description provided for @subscription.
  ///
  /// In en, this message translates to:
  /// **'Subscription'**
  String get subscription;

  /// No description provided for @planTrial.
  ///
  /// In en, this message translates to:
  /// **'Trial'**
  String get planTrial;

  /// No description provided for @planNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get planNormal;

  /// No description provided for @planPro.
  ///
  /// In en, this message translates to:
  /// **'Pro'**
  String get planPro;

  /// No description provided for @planMax1.
  ///
  /// In en, this message translates to:
  /// **'Max'**
  String get planMax1;

  /// No description provided for @planMax2.
  ///
  /// In en, this message translates to:
  /// **'Ultra'**
  String get planMax2;

  /// No description provided for @planNone.
  ///
  /// In en, this message translates to:
  /// **'No active plan'**
  String get planNone;

  /// No description provided for @planAnalysesPerMonth.
  ///
  /// In en, this message translates to:
  /// **'{count} analyses per month'**
  String planAnalysesPerMonth(int count);

  /// No description provided for @planTrialDescription.
  ///
  /// In en, this message translates to:
  /// **'{days}-day free trial with {count} analyses'**
  String planTrialDescription(int days, int count);

  /// No description provided for @trialDaysLeft.
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =1{1 day of trial left} other{{days} days of trial left}}'**
  String trialDaysLeft(int days);

  /// No description provided for @trialExpired.
  ///
  /// In en, this message translates to:
  /// **'Your free trial has ended. Choose a plan to keep analysing.'**
  String get trialExpired;

  /// No description provided for @analysesRemaining.
  ///
  /// In en, this message translates to:
  /// **'{remaining} of {total} analyses left this period'**
  String analysesRemaining(int remaining, int total);

  /// No description provided for @extraCredits.
  ///
  /// In en, this message translates to:
  /// **'{count} extra analyses'**
  String extraCredits(int count);

  /// No description provided for @renewsOn.
  ///
  /// In en, this message translates to:
  /// **'Renews {date}'**
  String renewsOn(String date);

  /// No description provided for @choosePlan.
  ///
  /// In en, this message translates to:
  /// **'Choose a plan'**
  String get choosePlan;

  /// No description provided for @currentPlan.
  ///
  /// In en, this message translates to:
  /// **'Current plan'**
  String get currentPlan;

  /// No description provided for @subscribe.
  ///
  /// In en, this message translates to:
  /// **'Subscribe'**
  String get subscribe;

  /// No description provided for @perMonth.
  ///
  /// In en, this message translates to:
  /// **'/ month'**
  String get perMonth;

  /// No description provided for @extraPacksTitle.
  ///
  /// In en, this message translates to:
  /// **'Need more? Buy extra analyses'**
  String get extraPacksTitle;

  /// No description provided for @extraPacksHint.
  ///
  /// In en, this message translates to:
  /// **'Extra analyses never expire and are used after your monthly allowance.'**
  String get extraPacksHint;

  /// No description provided for @buy.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get buy;

  /// No description provided for @restorePurchases.
  ///
  /// In en, this message translates to:
  /// **'Restore purchases'**
  String get restorePurchases;

  /// No description provided for @manageSubscription.
  ///
  /// In en, this message translates to:
  /// **'Manage subscription'**
  String get manageSubscription;

  /// No description provided for @purchaseSuccess.
  ///
  /// In en, this message translates to:
  /// **'Thanks! Your purchase is active.'**
  String get purchaseSuccess;

  /// No description provided for @purchasePending.
  ///
  /// In en, this message translates to:
  /// **'Purchase pending…'**
  String get purchasePending;

  /// No description provided for @purchaseFailed.
  ///
  /// In en, this message translates to:
  /// **'The purchase could not be completed.'**
  String get purchaseFailed;

  /// No description provided for @purchaseCanceled.
  ///
  /// In en, this message translates to:
  /// **'Purchase canceled.'**
  String get purchaseCanceled;

  /// No description provided for @billingUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Purchases are not available on this platform yet. Subscribe on your phone or Mac; your plan will work on every device.'**
  String get billingUnavailable;

  /// No description provided for @errQuotaExceeded.
  ///
  /// In en, this message translates to:
  /// **'You have no analyses left for this period. Upgrade your plan or buy extra analyses.'**
  String get errQuotaExceeded;

  /// No description provided for @errTrialExpired.
  ///
  /// In en, this message translates to:
  /// **'Your free trial has ended. Choose a plan to continue.'**
  String get errTrialExpired;

  /// No description provided for @errNoPlan.
  ///
  /// In en, this message translates to:
  /// **'An active plan is needed for AI analysis.'**
  String get errNoPlan;

  /// No description provided for @viewPlans.
  ///
  /// In en, this message translates to:
  /// **'View plans'**
  String get viewPlans;

  /// No description provided for @usageTitle.
  ///
  /// In en, this message translates to:
  /// **'Usage'**
  String get usageTitle;

  /// No description provided for @demoPurchaseNote.
  ///
  /// In en, this message translates to:
  /// **'Demo billing: purchases are simulated on this platform.'**
  String get demoPurchaseNote;

  /// No description provided for @mostPopular.
  ///
  /// In en, this message translates to:
  /// **'Most popular'**
  String get mostPopular;

  /// No description provided for @bestValue.
  ///
  /// In en, this message translates to:
  /// **'Best value'**
  String get bestValue;

  /// No description provided for @planFeaturesCommon.
  ///
  /// In en, this message translates to:
  /// **'Photo recognition, live data, charts, favorites and all 120 languages are included in every plan. The allowance covers AI analyses.'**
  String get planFeaturesCommon;

  /// No description provided for @searchLanguages.
  ///
  /// In en, this message translates to:
  /// **'Search languages…'**
  String get searchLanguages;

  /// No description provided for @noLanguageMatch.
  ///
  /// In en, this message translates to:
  /// **'No language matches.'**
  String get noLanguageMatch;

  /// No description provided for @aiSettings.
  ///
  /// In en, this message translates to:
  /// **'AI analysis'**
  String get aiSettings;

  /// No description provided for @aiLength.
  ///
  /// In en, this message translates to:
  /// **'Length'**
  String get aiLength;

  /// No description provided for @aiDepthBrief.
  ///
  /// In en, this message translates to:
  /// **'Brief'**
  String get aiDepthBrief;

  /// No description provided for @aiDepthStandard.
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get aiDepthStandard;

  /// No description provided for @aiDepthDeep.
  ///
  /// In en, this message translates to:
  /// **'In-depth'**
  String get aiDepthDeep;

  /// No description provided for @aiDepthBriefDesc.
  ///
  /// In en, this message translates to:
  /// **'The essentials, fast.'**
  String get aiDepthBriefDesc;

  /// No description provided for @aiDepthStandardDesc.
  ///
  /// In en, this message translates to:
  /// **'Full report with every section.'**
  String get aiDepthStandardDesc;

  /// No description provided for @aiDepthDeepDesc.
  ///
  /// In en, this message translates to:
  /// **'More web searches, peer comparison and deeper detail.'**
  String get aiDepthDeepDesc;

  /// No description provided for @aiDepthWords.
  ///
  /// In en, this message translates to:
  /// **'About {min}–{max} words'**
  String aiDepthWords(String min, String max);

  /// No description provided for @aiDepthCost.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{uses 1 analysis} other{uses {count} analyses}}'**
  String aiDepthCost(int count);

  /// No description provided for @aiReaderLevel.
  ///
  /// In en, this message translates to:
  /// **'Reader level'**
  String get aiReaderLevel;

  /// No description provided for @aiReaderBeginner.
  ///
  /// In en, this message translates to:
  /// **'Beginner'**
  String get aiReaderBeginner;

  /// No description provided for @aiReaderExperienced.
  ///
  /// In en, this message translates to:
  /// **'Experienced'**
  String get aiReaderExperienced;

  /// No description provided for @aiReaderBeginnerDesc.
  ///
  /// In en, this message translates to:
  /// **'Plain language; every technical term is explained.'**
  String get aiReaderBeginnerDesc;

  /// No description provided for @aiReaderExperiencedDesc.
  ///
  /// In en, this message translates to:
  /// **'Denser text with standard financial terminology.'**
  String get aiReaderExperiencedDesc;

  /// No description provided for @aiCounterArgument.
  ///
  /// In en, this message translates to:
  /// **'Strongest counter-argument'**
  String get aiCounterArgument;

  /// No description provided for @aiCounterArgumentDesc.
  ///
  /// In en, this message translates to:
  /// **'The summary always ends with the best case against its own conclusion.'**
  String get aiCounterArgumentDesc;

  /// No description provided for @aiWebSearchesInfo.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{Up to 1 web search per analysis with your plan} other{Up to {count} web searches per analysis with your plan}}'**
  String aiWebSearchesInfo(int count);

  /// No description provided for @aiWebSearchesPlans.
  ///
  /// In en, this message translates to:
  /// **'Standard length by plan: Normal {normal}, Pro {pro}, Max {max}, Ultra {ultra}. Brief uses 2 fewer, In-depth 2 more.'**
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra);

  /// No description provided for @aiWebSearchesShort.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{up to 1 web search} other{up to {count} web searches}}'**
  String aiWebSearchesShort(int count);

  /// No description provided for @planWebSearches.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{1 web search per analysis} other{{count} web searches per analysis}}'**
  String planWebSearches(int count);

  /// No description provided for @errNotEnoughCredits.
  ///
  /// In en, this message translates to:
  /// **'This length needs {needed} analyses, but only {left} left. Choose a shorter length in Settings or get more analyses.'**
  String errNotEnoughCredits(int needed, int left);

  /// No description provided for @outlookMarketMood.
  ///
  /// In en, this message translates to:
  /// **'Market mood'**
  String get outlookMarketMood;

  /// No description provided for @moodVeryPessimistic.
  ///
  /// In en, this message translates to:
  /// **'Very pessimistic'**
  String get moodVeryPessimistic;

  /// No description provided for @moodPessimistic.
  ///
  /// In en, this message translates to:
  /// **'Pessimistic'**
  String get moodPessimistic;

  /// No description provided for @moodNeutral.
  ///
  /// In en, this message translates to:
  /// **'Neutral'**
  String get moodNeutral;

  /// No description provided for @moodOptimistic.
  ///
  /// In en, this message translates to:
  /// **'Optimistic'**
  String get moodOptimistic;

  /// No description provided for @moodVeryOptimistic.
  ///
  /// In en, this message translates to:
  /// **'Very optimistic'**
  String get moodVeryOptimistic;

  /// No description provided for @scenarioBull.
  ///
  /// In en, this message translates to:
  /// **'Bull case'**
  String get scenarioBull;

  /// No description provided for @scenarioBase.
  ///
  /// In en, this message translates to:
  /// **'Base case'**
  String get scenarioBase;

  /// No description provided for @scenarioBear.
  ///
  /// In en, this message translates to:
  /// **'Bear case'**
  String get scenarioBear;

  /// No description provided for @outlookCurrentPrice.
  ///
  /// In en, this message translates to:
  /// **'Current price: {price}'**
  String outlookCurrentPrice(String price);

  /// No description provided for @outlookKeyLevels.
  ///
  /// In en, this message translates to:
  /// **'Key levels'**
  String get outlookKeyLevels;

  /// No description provided for @keyLevelSupport.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get keyLevelSupport;

  /// No description provided for @keyLevelResistance.
  ///
  /// In en, this message translates to:
  /// **'Resistance'**
  String get keyLevelResistance;

  /// No description provided for @keyLevelAnchor.
  ///
  /// In en, this message translates to:
  /// **'Anchor'**
  String get keyLevelAnchor;

  /// No description provided for @upcomingEvents.
  ///
  /// In en, this message translates to:
  /// **'Upcoming events'**
  String get upcomingEvents;

  /// No description provided for @outlookChartNote.
  ///
  /// In en, this message translates to:
  /// **'Indicative ranges; probabilities are rough judgements, not predictions.'**
  String get outlookChartNote;

  /// No description provided for @accountTitle.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get accountTitle;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOut;

  /// No description provided for @notSignedIn.
  ///
  /// In en, this message translates to:
  /// **'Not signed in'**
  String get notSignedIn;

  /// No description provided for @accountBenefit.
  ///
  /// In en, this message translates to:
  /// **'Sign in so your subscription works on all your devices.'**
  String get accountBenefit;

  /// No description provided for @accountSyncedNote.
  ///
  /// In en, this message translates to:
  /// **'Your subscription and remaining analyses are the same on every device.'**
  String get accountSyncedNote;

  /// No description provided for @signInTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to WhatStock'**
  String get signInTitle;

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get emailLabel;

  /// No description provided for @continueWithEmail.
  ///
  /// In en, this message translates to:
  /// **'Continue with email'**
  String get continueWithEmail;

  /// No description provided for @codeSentTo.
  ///
  /// In en, this message translates to:
  /// **'We sent a 6-digit code to {email}. It is valid for 10 minutes.'**
  String codeSentTo(String email);

  /// No description provided for @codeLabel.
  ///
  /// In en, this message translates to:
  /// **'Sign-in code'**
  String get codeLabel;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Send a new code'**
  String get resendCode;

  /// No description provided for @useDifferentEmail.
  ///
  /// In en, this message translates to:
  /// **'Use a different email'**
  String get useDifferentEmail;

  /// No description provided for @errInvalidCode.
  ///
  /// In en, this message translates to:
  /// **'The code is wrong or has expired.'**
  String get errInvalidCode;

  /// No description provided for @errInvalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address.'**
  String get errInvalidEmail;

  /// No description provided for @errSignInFailed.
  ///
  /// In en, this message translates to:
  /// **'Sign-in failed. Check your connection and try again.'**
  String get errSignInFailed;

  /// No description provided for @checkoutWaiting.
  ///
  /// In en, this message translates to:
  /// **'Complete the payment in your browser. The app updates automatically when it is done.'**
  String get checkoutWaiting;

  /// No description provided for @paymentViaStripe.
  ///
  /// In en, this message translates to:
  /// **'Secure payment in your browser via Stripe. Cancel anytime.'**
  String get paymentViaStripe;

  /// No description provided for @paymentViaStore.
  ///
  /// In en, this message translates to:
  /// **'Billed through your App Store or Google Play account. Cancel anytime in your store settings.'**
  String get paymentViaStore;

  /// Name of the space bar key, as printed in keyboard shortcuts.
  ///
  /// In en, this message translates to:
  /// **'Space'**
  String get keySpace;

  /// No description provided for @doubleOptionTitle.
  ///
  /// In en, this message translates to:
  /// **'Double-press Option'**
  String get doubleOptionTitle;

  /// No description provided for @doubleOptionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Pressing the Option key twice quickly also summons WhatStock.'**
  String get doubleOptionSubtitle;

  /// No description provided for @doubleOptionPermission.
  ///
  /// In en, this message translates to:
  /// **'To make it work in other apps too, allow WhatStock under System Settings → Privacy & Security → Input Monitoring, then reopen the app.'**
  String get doubleOptionPermission;

  /// No description provided for @openSystemSettings.
  ///
  /// In en, this message translates to:
  /// **'Open System Settings'**
  String get openSystemSettings;

  /// No description provided for @hotkeyHintDoubleOption.
  ///
  /// In en, this message translates to:
  /// **'Press {shortcut} or double-press Option anywhere to summon WhatStock.'**
  String hotkeyHintDoubleOption(String shortcut);

  /// No description provided for @scenarioMostLikely.
  ///
  /// In en, this message translates to:
  /// **'Most likely'**
  String get scenarioMostLikely;

  /// Axis label for the starting point (the current price) of the long-term chart.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get longTermToday;

  /// Length of a long-term horizon, e.g. "5 years".
  ///
  /// In en, this message translates to:
  /// **'{years, plural, one{1 year} other{{years} years}}'**
  String longTermYears(int years);

  /// Implied average annual return range, e.g. "+2.3% … +11.3% a year".
  ///
  /// In en, this message translates to:
  /// **'{range} a year'**
  String longTermPerYear(String range);

  /// The most likely price within a long-term range.
  ///
  /// In en, this message translates to:
  /// **'most likely {price}'**
  String longTermLikely(String price);

  /// No description provided for @confidenceLow.
  ///
  /// In en, this message translates to:
  /// **'Low confidence'**
  String get confidenceLow;

  /// No description provided for @confidenceMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium confidence'**
  String get confidenceMedium;

  /// No description provided for @confidenceHigh.
  ///
  /// In en, this message translates to:
  /// **'High confidence'**
  String get confidenceHigh;

  /// No description provided for @longTermNote.
  ///
  /// In en, this message translates to:
  /// **'Long-term ranges rest on the stated assumptions and widen with time. Prices exclude dividends. Rough judgements, not predictions.'**
  String get longTermNote;

  /// No description provided for @portfolio.
  ///
  /// In en, this message translates to:
  /// **'Portfolio'**
  String get portfolio;

  /// No description provided for @portfolioEmpty.
  ///
  /// In en, this message translates to:
  /// **'Nothing here yet. Open a stock and tap “Add to portfolio” to follow what you own.'**
  String get portfolioEmpty;

  /// No description provided for @portfolioLocalNote.
  ///
  /// In en, this message translates to:
  /// **'Stored only on this device. Totals are converted at ECB reference rates; prices may be delayed.'**
  String get portfolioLocalNote;

  /// No description provided for @addToPortfolio.
  ///
  /// In en, this message translates to:
  /// **'Add to portfolio'**
  String get addToPortfolio;

  /// No description provided for @portfolioAddTitle.
  ///
  /// In en, this message translates to:
  /// **'Add {symbol}'**
  String portfolioAddTitle(String symbol);

  /// No description provided for @portfolioQuantity.
  ///
  /// In en, this message translates to:
  /// **'Number of shares'**
  String get portfolioQuantity;

  /// No description provided for @portfolioBuyPrice.
  ///
  /// In en, this message translates to:
  /// **'Price per share ({currency})'**
  String portfolioBuyPrice(String currency);

  /// No description provided for @portfolioBuyDate.
  ///
  /// In en, this message translates to:
  /// **'Purchase date'**
  String get portfolioBuyDate;

  /// No description provided for @portfolioAdd.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get portfolioAdd;

  /// No description provided for @portfolioInvalidNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter a number greater than zero.'**
  String get portfolioInvalidNumber;

  /// No description provided for @portfolioAdded.
  ///
  /// In en, this message translates to:
  /// **'{symbol} added to your portfolio.'**
  String portfolioAdded(String symbol);

  /// No description provided for @portfolioTotalValue.
  ///
  /// In en, this message translates to:
  /// **'Total value'**
  String get portfolioTotalValue;

  /// Today's change in value of the portfolio or position.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get portfolioToday;

  /// No description provided for @portfolioGainLoss.
  ///
  /// In en, this message translates to:
  /// **'Gain/loss'**
  String get portfolioGainLoss;

  /// No description provided for @portfolioInvested.
  ///
  /// In en, this message translates to:
  /// **'Invested'**
  String get portfolioInvested;

  /// No description provided for @portfolioAllocation.
  ///
  /// In en, this message translates to:
  /// **'Allocation'**
  String get portfolioAllocation;

  /// No description provided for @portfolioPositions.
  ///
  /// In en, this message translates to:
  /// **'Positions'**
  String get portfolioPositions;

  /// Average purchase price of a position, e.g. "avg. cost 150.00".
  ///
  /// In en, this message translates to:
  /// **'avg. cost {price}'**
  String portfolioAvgCost(String price);

  /// No description provided for @portfolioYourPosition.
  ///
  /// In en, this message translates to:
  /// **'Your position'**
  String get portfolioYourPosition;

  /// No description provided for @portfolioPurchases.
  ///
  /// In en, this message translates to:
  /// **'Purchases'**
  String get portfolioPurchases;

  /// No description provided for @portfolioRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get portfolioRemove;

  /// No description provided for @portfolioExcluded.
  ///
  /// In en, this message translates to:
  /// **'Positions without a price or exchange rate are left out of the totals.'**
  String get portfolioExcluded;

  /// No description provided for @priceAlerts.
  ///
  /// In en, this message translates to:
  /// **'Price alerts'**
  String get priceAlerts;

  /// No description provided for @setPriceAlert.
  ///
  /// In en, this message translates to:
  /// **'Set price alert'**
  String get setPriceAlert;

  /// No description provided for @alertDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Price alert · {symbol}'**
  String alertDialogTitle(String symbol);

  /// No description provided for @alertKindAbove.
  ///
  /// In en, this message translates to:
  /// **'Rises above'**
  String get alertKindAbove;

  /// No description provided for @alertKindBelow.
  ///
  /// In en, this message translates to:
  /// **'Falls below'**
  String get alertKindBelow;

  /// No description provided for @alertKindMove.
  ///
  /// In en, this message translates to:
  /// **'Moves a lot in a day'**
  String get alertKindMove;

  /// No description provided for @alertTargetPrice.
  ///
  /// In en, this message translates to:
  /// **'Price ({currency})'**
  String alertTargetPrice(String currency);

  /// No description provided for @alertMovePercent.
  ///
  /// In en, this message translates to:
  /// **'Daily move (%)'**
  String get alertMovePercent;

  /// No description provided for @alertAlreadyMet.
  ///
  /// In en, this message translates to:
  /// **'The price is already past this level.'**
  String get alertAlreadyMet;

  /// No description provided for @alertSave.
  ///
  /// In en, this message translates to:
  /// **'Set alert'**
  String get alertSave;

  /// No description provided for @alertCreated.
  ///
  /// In en, this message translates to:
  /// **'Alert set for {symbol}.'**
  String alertCreated(String symbol);

  /// No description provided for @alertsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No price alerts yet. Open a stock and tap the bell to set one.'**
  String get alertsEmpty;

  /// No description provided for @alertsNote.
  ///
  /// In en, this message translates to:
  /// **'Alerts are checked every 5 minutes while WhatStock is running. On a computer it keeps running in the menu bar or tray; on a phone, alerts arrive while the app is open for now.'**
  String get alertsNote;

  /// No description provided for @alertDescAbove.
  ///
  /// In en, this message translates to:
  /// **'Above {price}'**
  String alertDescAbove(String price);

  /// No description provided for @alertDescBelow.
  ///
  /// In en, this message translates to:
  /// **'Below {price}'**
  String alertDescBelow(String price);

  /// No description provided for @alertDescMove.
  ///
  /// In en, this message translates to:
  /// **'Daily move ±{percent}'**
  String alertDescMove(String percent);

  /// No description provided for @alertTriggeredAt.
  ///
  /// In en, this message translates to:
  /// **'Triggered {date} at {price}'**
  String alertTriggeredAt(String date, String price);

  /// No description provided for @alertRearm.
  ///
  /// In en, this message translates to:
  /// **'Re-arm'**
  String get alertRearm;

  /// No description provided for @alertDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get alertDelete;

  /// Notification title when a price alert fires.
  ///
  /// In en, this message translates to:
  /// **'{symbol} rose above {price}'**
  String alertHitAbove(String symbol, String price);

  /// No description provided for @alertHitBelow.
  ///
  /// In en, this message translates to:
  /// **'{symbol} fell below {price}'**
  String alertHitBelow(String symbol, String price);

  /// No description provided for @alertHitMove.
  ///
  /// In en, this message translates to:
  /// **'{symbol} moved {percent} today'**
  String alertHitMove(String symbol, String percent);

  /// No description provided for @alertHitBody.
  ///
  /// In en, this message translates to:
  /// **'Current price: {price}'**
  String alertHitBody(String price);

  /// No description provided for @alertOpen.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get alertOpen;

  /// No description provided for @keepInTrayTitle.
  ///
  /// In en, this message translates to:
  /// **'Keep running when the window is closed'**
  String get keepInTrayTitle;

  /// No description provided for @keepInTraySubtitle.
  ///
  /// In en, this message translates to:
  /// **'WhatStock stays in the menu bar or tray, so the hotkey and price alerts keep working.'**
  String get keepInTraySubtitle;

  /// No description provided for @termsOfUse.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get termsOfUse;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @subscriptionLegal.
  ///
  /// In en, this message translates to:
  /// **'Subscriptions renew automatically every month until you cancel. By subscribing you accept the Terms of Use and the Privacy Policy.'**
  String get subscriptionLegal;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get deleteAccount;

  /// No description provided for @deleteAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete your account?'**
  String get deleteAccountTitle;

  /// No description provided for @deleteAccountBody.
  ///
  /// In en, this message translates to:
  /// **'Your account and everything stored on our server (email, allowance, usage) will be deleted for good, and unused analyses are lost. A subscription paid in the browser is cancelled right away; an App Store or Google Play subscription must be cancelled in the store\'s settings.'**
  String get deleteAccountBody;

  /// No description provided for @deleteLocalData.
  ///
  /// In en, this message translates to:
  /// **'Also delete the data on this device (portfolio, alerts, favorites, history, saved analyses)'**
  String get deleteLocalData;

  /// No description provided for @deleteAccountConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete for good'**
  String get deleteAccountConfirm;

  /// No description provided for @accountDeleted.
  ///
  /// In en, this message translates to:
  /// **'Your account has been deleted.'**
  String get accountDeleted;

  /// No description provided for @errDeleteAccount.
  ///
  /// In en, this message translates to:
  /// **'The account could not be deleted. Check your connection and try again.'**
  String get errDeleteAccount;

  /// Shown during the free trial in Settings (under the analysis length selector) and on the stock page: subscribers get a better analysis because more is spent on it. Standard / In-depth = aiDepthStandard / aiDepthDeep.
  ///
  /// In en, this message translates to:
  /// **'Trial analyses are brief and made with a faster AI model. With a plan you get our most capable AI, more web research, and the Standard and In-depth lengths.'**
  String get aiTrialBriefNote;

  /// No description provided for @billingMonthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get billingMonthly;

  /// No description provided for @billingYearly.
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get billingYearly;

  /// Badge next to Yearly in the billing period switch: yearly costs 10 months' price.
  ///
  /// In en, this message translates to:
  /// **'2 months free'**
  String get yearlyDiscount;

  /// No description provided for @perYear.
  ///
  /// In en, this message translates to:
  /// **'/ year'**
  String get perYear;

  /// Under a yearly price: the per-month equivalent.
  ///
  /// In en, this message translates to:
  /// **'≈ {price} per month'**
  String pricePerMonthApprox(String price);

  /// Under the plans when the Yearly billing period is selected (yearly counterpart of subscriptionLegal; required by the App Store).
  ///
  /// In en, this message translates to:
  /// **'Yearly subscriptions renew automatically every year until you cancel. By subscribing you accept the Terms of Use and the Privacy Policy.'**
  String get subscriptionLegalYearly;

  /// Section title on the home screen listing the user's earlier AI analyses (saved on the device).
  ///
  /// In en, this message translates to:
  /// **'My analyses'**
  String get myAnalyses;

  /// Short label of the price-alerts tab in the phone's bottom navigation bar (must be short, max ~12 characters).
  ///
  /// In en, this message translates to:
  /// **'Alerts'**
  String get navAlerts;

  /// Title of the screen shown when the app is in an invite-only preview and asks for an invite code.
  ///
  /// In en, this message translates to:
  /// **'Closed preview'**
  String get inviteTitle;

  /// Explanation under the title of the invite-code screen.
  ///
  /// In en, this message translates to:
  /// **'WhatStock is available by invitation only for now. Enter the invite code you received.'**
  String get inviteBody;

  /// Label of the text field where the user types the invite code.
  ///
  /// In en, this message translates to:
  /// **'Invite code'**
  String get inviteCodeLabel;

  /// Button that checks the entered invite code and opens the app.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get inviteContinue;

  /// Error under the invite-code field when the code is wrong.
  ///
  /// In en, this message translates to:
  /// **'This invite code is not valid.'**
  String get inviteInvalid;

  /// Error when the invite code's validity period has ended.
  ///
  /// In en, this message translates to:
  /// **'This invite has expired. Ask the person who invited you for a new code.'**
  String get inviteExpired;

  /// Error when the same invite code has been used on too many devices (it was probably shared further).
  ///
  /// In en, this message translates to:
  /// **'This invite code is already in use on the maximum number of devices.'**
  String get inviteDeviceLimit;

  /// Tiny watermark line at the bottom of every screen in an invite-only test build: this pre-release copy is confidential (not to be shared). Keep it short.
  ///
  /// In en, this message translates to:
  /// **'Confidential preview'**
  String get previewConfidential;

  /// Error when the invite-only preview's daily number of AI analyses is used up.
  ///
  /// In en, this message translates to:
  /// **'Today\'s analysis limit of this preview has been reached. Try again tomorrow.'**
  String get errPreviewDailyLimit;

  /// How long ago an AI analysis was made, in hours (shown next to saved analyses and in the update question).
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 hour ago} other{{count} hours ago}}'**
  String ageHours(int count);

  /// How long ago an AI analysis was made, in days.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 day ago} other{{count} days ago}}'**
  String ageDays(int count);

  /// Title of the question shown when the user opens a saved AI analysis that is more than 12 hours old.
  ///
  /// In en, this message translates to:
  /// **'Update this analysis?'**
  String get staleTitle;

  /// Body of the update question. {age} is a phrase like '2 days ago' or '15 hours ago' (from ageHours / ageDays).
  ///
  /// In en, this message translates to:
  /// **'It was made {age}. Prices, news and results may have changed since then.'**
  String staleBody(String age);

  /// Button: open the saved (older) analysis without making a new one.
  ///
  /// In en, this message translates to:
  /// **'Show the earlier one'**
  String get staleKeep;

  /// Button: make a fresh AI analysis now (uses the allowance).
  ///
  /// In en, this message translates to:
  /// **'Make a new one'**
  String get staleRefresh;

  /// Button under the short list of saved analyses on the home screen that opens the full history. {count} is the number of saved analyses.
  ///
  /// In en, this message translates to:
  /// **'See all ({count})'**
  String seeAll(int count);

  /// Hint in the search field of the saved-analyses history page (searches ticker and headline).
  ///
  /// In en, this message translates to:
  /// **'Search your analyses'**
  String get searchAnalyses;

  /// Label of the swipe-to-delete action / button that removes a saved analysis from the device.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteAnalysis;

  /// Short confirmation after a saved analysis was deleted. {symbol} is a ticker like AAPL.
  ///
  /// In en, this message translates to:
  /// **'{symbol} analysis deleted'**
  String analysisDeleted(String symbol);

  /// Small hint under the key price levels (support, resistance) of the AI analysis: tapping one sets a price alert at that level.
  ///
  /// In en, this message translates to:
  /// **'Tap a level to get an alert when the price reaches it.'**
  String get keyLevelAlertHint;

  /// Title of the share sheet that previews the analysis card.
  ///
  /// In en, this message translates to:
  /// **'Share analysis'**
  String get shareAnalysisTitle;

  /// Button: share the analysis as a picture card (good for Instagram, WhatsApp).
  ///
  /// In en, this message translates to:
  /// **'Share as image'**
  String get shareAsImage;

  /// Button: share the analysis as plain text.
  ///
  /// In en, this message translates to:
  /// **'Share as text'**
  String get shareAsText;

  /// Footer on the shared analysis picture, next to the WhatStock logo. Keep WhatStock unchanged.
  ///
  /// In en, this message translates to:
  /// **'Made with WhatStock'**
  String get shareCardFooter;

  /// Tiny line at the bottom of the shared analysis picture.
  ///
  /// In en, this message translates to:
  /// **'AI analysis · not investment advice'**
  String get shareCardDisclaimer;

  /// Settings section title of the referral program.
  ///
  /// In en, this message translates to:
  /// **'Invite friends'**
  String get referralTitle;

  /// Explanation of the referral program. {count} is the bonus number of analyses each side gets.
  ///
  /// In en, this message translates to:
  /// **'Share your code. Your friend gets {count, plural, =1{1 extra analysis} other{{count} extra analyses}} right away, and you get the same after their first analysis.'**
  String referralBody(int count);

  /// Label above the user's own referral code.
  ///
  /// In en, this message translates to:
  /// **'Your code'**
  String get referralYourCode;

  /// Referral counters: how many friends redeemed the code, and after how many the user already got the bonus.
  ///
  /// In en, this message translates to:
  /// **'Invited: {invited} · Rewarded: {rewarded}'**
  String referralStats(int invited, int rewarded);

  /// Button that opens the field to redeem a friend's referral code.
  ///
  /// In en, this message translates to:
  /// **'Have a code from a friend?'**
  String get referralHaveCode;

  /// Button that redeems the entered referral code.
  ///
  /// In en, this message translates to:
  /// **'Redeem'**
  String get referralRedeem;

  /// Confirmation after redeeming a friend's code.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 extra analysis added. Welcome!} other{{count} extra analyses added. Welcome!}}'**
  String referralRedeemed(int count);

  /// Error: the referral code was not found.
  ///
  /// In en, this message translates to:
  /// **'This code doesn\'t exist. Check it and try again.'**
  String get referralErrUnknown;

  /// Error: the user entered their own referral code.
  ///
  /// In en, this message translates to:
  /// **'You can\'t redeem your own code.'**
  String get referralErrOwn;

  /// Error: the account already redeemed a referral code once.
  ///
  /// In en, this message translates to:
  /// **'You\'ve already redeemed a friend\'s code.'**
  String get referralErrAlready;

  /// Text shared with a friend together with the referral code. Keep WhatStock unchanged.
  ///
  /// In en, this message translates to:
  /// **'I analyse stocks with WhatStock: photograph a stock and the AI explains it. With my code {code} you get {count, plural, =1{1 extra analysis} other{{count} extra analyses}}.'**
  String referralShareText(String code, int count);

  /// Short confirmation after copying the referral code.
  ///
  /// In en, this message translates to:
  /// **'Code copied'**
  String get referralCopied;

  /// First onboarding page title: the app recognises a stock from a photo.
  ///
  /// In en, this message translates to:
  /// **'Photograph a stock'**
  String get onboardTitle1;

  /// First onboarding page text. Keep WhatStock unchanged.
  ///
  /// In en, this message translates to:
  /// **'A brokerage screen, a newspaper or a company logo is enough: WhatStock recognises the stock and shows its price, chart and key figures.'**
  String get onboardBody1;

  /// Second onboarding page title: the AI analysis.
  ///
  /// In en, this message translates to:
  /// **'Understand it in minutes'**
  String get onboardTitle2;

  /// Second onboarding page text.
  ///
  /// In en, this message translates to:
  /// **'The AI analysis explains what moves the stock, the risks, the valuation and three scenarios for where the price could go, with sources and in your language.'**
  String get onboardBody2;

  /// Third onboarding page title: favorites, portfolio, alerts.
  ///
  /// In en, this message translates to:
  /// **'Stay on top of it'**
  String get onboardTitle3;

  /// Third onboarding page text.
  ///
  /// In en, this message translates to:
  /// **'Favorites, your portfolio and price alerts keep you posted. Your analyses stay on your device, ready to reopen.'**
  String get onboardBody3;

  /// Button: next onboarding page.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get onboardNext;

  /// Button on the last onboarding page: start using the app.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get onboardStart;

  /// Button: skip the onboarding.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get onboardSkip;

  /// Heading of the box comparing a re-run analysis with the previous one; date is the previous analysis date and time.
  ///
  /// In en, this message translates to:
  /// **'Since the previous analysis ({date})'**
  String changesTitle(String date);

  /// No description provided for @changesPrice.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get changesPrice;

  /// No description provided for @changesNoMajor.
  ///
  /// In en, this message translates to:
  /// **'The outlook has not changed materially.'**
  String get changesNoMajor;

  /// No description provided for @changesPreviousSummary.
  ///
  /// In en, this message translates to:
  /// **'Previous summary'**
  String get changesPreviousSummary;

  /// No description provided for @telemetryTitle.
  ///
  /// In en, this message translates to:
  /// **'Help improve WhatStock'**
  String get telemetryTitle;

  /// No description provided for @telemetryBody.
  ///
  /// In en, this message translates to:
  /// **'Share anonymous usage statistics and crash reports: which features are used and what went wrong. Never your stocks, analyses or personal data. You can change this at any time in Settings.'**
  String get telemetryBody;

  /// No description provided for @telemetryAllow.
  ///
  /// In en, this message translates to:
  /// **'Allow'**
  String get telemetryAllow;

  /// No description provided for @telemetryDecline.
  ///
  /// In en, this message translates to:
  /// **'No thanks'**
  String get telemetryDecline;

  /// No description provided for @telemetrySetting.
  ///
  /// In en, this message translates to:
  /// **'Anonymous statistics and crash reports'**
  String get telemetrySetting;

  /// No description provided for @telemetrySettingHint.
  ///
  /// In en, this message translates to:
  /// **'How often features are used and error reports, without personal data or the content of your searches and analyses.'**
  String get telemetrySettingHint;

  /// No description provided for @askButton.
  ///
  /// In en, this message translates to:
  /// **'Ask about this analysis'**
  String get askButton;

  /// Title of the follow-up questions sheet; symbol is the stock ticker.
  ///
  /// In en, this message translates to:
  /// **'Questions about {symbol}'**
  String askTitle(String symbol);

  /// No description provided for @askIntro.
  ///
  /// In en, this message translates to:
  /// **'Ask anything about the analysis: what a risk means, what would change the outlook, how a number was worked out. The answers are based on this analysis and are not investment advice.'**
  String get askIntro;

  /// No description provided for @askHint.
  ///
  /// In en, this message translates to:
  /// **'Ask a question…'**
  String get askHint;

  /// No description provided for @askSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get askSend;

  /// No description provided for @askThinking.
  ///
  /// In en, this message translates to:
  /// **'Thinking…'**
  String get askThinking;

  /// No description provided for @askSuggest1.
  ///
  /// In en, this message translates to:
  /// **'What is the biggest risk?'**
  String get askSuggest1;

  /// No description provided for @askSuggest2.
  ///
  /// In en, this message translates to:
  /// **'What would change the outlook?'**
  String get askSuggest2;

  /// No description provided for @askSuggest3.
  ///
  /// In en, this message translates to:
  /// **'Explain it in simple terms'**
  String get askSuggest3;

  /// No description provided for @askMaxReached.
  ///
  /// In en, this message translates to:
  /// **'That was the last question for this analysis. Make a new analysis to ask more.'**
  String get askMaxReached;

  /// No description provided for @errAskLimit.
  ///
  /// In en, this message translates to:
  /// **'You have reached today\'s limit for questions. Please try again tomorrow.'**
  String get errAskLimit;

  /// No description provided for @eventTomorrow.
  ///
  /// In en, this message translates to:
  /// **'Tomorrow'**
  String get eventTomorrow;

  /// How far away an event is.
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =1{in 1 day} other{in {days} days}}'**
  String eventInDays(int days);

  /// No description provided for @eventEarnings.
  ///
  /// In en, this message translates to:
  /// **'Quarterly results'**
  String get eventEarnings;

  /// No description provided for @eventBeforeOpen.
  ///
  /// In en, this message translates to:
  /// **'before the open'**
  String get eventBeforeOpen;

  /// No description provided for @eventAfterClose.
  ///
  /// In en, this message translates to:
  /// **'after the close'**
  String get eventAfterClose;

  /// Analysts' expected earnings per share for the coming results; value is a formatted number.
  ///
  /// In en, this message translates to:
  /// **'EPS estimate: {value}'**
  String eventEpsEstimate(String value);

  /// No description provided for @eventFromAnalysis.
  ///
  /// In en, this message translates to:
  /// **'From your analysis'**
  String get eventFromAnalysis;

  /// No description provided for @eventsHint.
  ///
  /// In en, this message translates to:
  /// **'Results dates of your favorites and portfolio stocks for the next 90 days, and the dated events your analyses flagged.'**
  String get eventsHint;

  /// No description provided for @eventsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No dated events in the next 90 days. Add favorites or portfolio stocks to see their results dates here.'**
  String get eventsEmpty;

  /// No description provided for @compareTitle.
  ///
  /// In en, this message translates to:
  /// **'Compare'**
  String get compareTitle;

  /// No description provided for @compareAdd.
  ///
  /// In en, this message translates to:
  /// **'Add a stock'**
  String get compareAdd;

  /// No description provided for @compareRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get compareRemove;

  /// No description provided for @compareTickerHint.
  ///
  /// In en, this message translates to:
  /// **'Ticker, e.g. MSFT'**
  String get compareTickerHint;

  /// No description provided for @compareHint.
  ///
  /// In en, this message translates to:
  /// **'Key figures side by side; the best value in each row is highlighted. Amounts are in each stock\'s own currency.'**
  String get compareHint;

  /// No description provided for @compareNoAnalysis.
  ///
  /// In en, this message translates to:
  /// **'No analysis yet'**
  String get compareNoAnalysis;

  /// No description provided for @portfolioDividends.
  ///
  /// In en, this message translates to:
  /// **'Yearly dividends'**
  String get portfolioDividends;

  /// Dividend yield of the portfolio; percent is formatted like 1.8%.
  ///
  /// In en, this message translates to:
  /// **'{percent} yield'**
  String portfolioDividendYield(String percent);

  /// No description provided for @portfolioDividendNote.
  ///
  /// In en, this message translates to:
  /// **'Expected yearly dividends are based on the dividends paid in the last 12 months; future payments are not guaranteed.'**
  String get portfolioDividendNote;

  /// Expected yearly dividend of one position; amount is formatted money.
  ///
  /// In en, this message translates to:
  /// **'Dividend: {amount} a year'**
  String positionDividend(String amount);

  /// Very short label on the price chart next to the user's average purchase price line, followed by the price.
  ///
  /// In en, this message translates to:
  /// **'Your avg.'**
  String get chartAvgCost;

  /// Very short label on the price chart next to a price alert line, followed by the price.
  ///
  /// In en, this message translates to:
  /// **'Alert'**
  String get chartAlertLevel;

  /// Home screen section title: today's change of the main US stock indices (S&P 500, Nasdaq 100, Dow Jones).
  ///
  /// In en, this message translates to:
  /// **'Markets today'**
  String get marketsToday;

  /// No description provided for @notesTitle.
  ///
  /// In en, this message translates to:
  /// **'My notes'**
  String get notesTitle;

  /// No description provided for @notesHint.
  ///
  /// In en, this message translates to:
  /// **'Why did you buy it, what are you watching, what would make you sell?'**
  String get notesHint;

  /// No description provided for @notesInfo.
  ///
  /// In en, this message translates to:
  /// **'Stored only on this device. The AI analysis takes your notes into account.'**
  String get notesInfo;

  /// When the note was last saved; date is a formatted date and time.
  ///
  /// In en, this message translates to:
  /// **'Saved {date}'**
  String notesSaved(String date);

  /// Title above chips of competitor stocks (peers) on a stock's page.
  ///
  /// In en, this message translates to:
  /// **'Similar companies'**
  String get peersTitle;

  /// No description provided for @portfolioExport.
  ///
  /// In en, this message translates to:
  /// **'Export as CSV'**
  String get portfolioExport;

  /// No description provided for @portfolioImport.
  ///
  /// In en, this message translates to:
  /// **'Import from CSV'**
  String get portfolioImport;

  /// No description provided for @portfolioImportHint.
  ///
  /// In en, this message translates to:
  /// **'Paste one purchase per line: ticker, quantity, price, currency, date (YYYY-MM-DD). Columns may be separated by commas, semicolons or tabs; the header row is optional.'**
  String get portfolioImportHint;

  /// No description provided for @portfolioImportButton.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get portfolioImportButton;

  /// After importing: how many purchases were added.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 purchase added} other{{count} purchases added}}'**
  String portfolioImported(int count);

  /// After importing: how many lines could not be read.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 line skipped} other{{count} lines skipped}}'**
  String portfolioImportSkipped(int count);

  /// No description provided for @syncInfo.
  ///
  /// In en, this message translates to:
  /// **'Portfolio, favorites, price alerts and notes are synced across your devices.'**
  String get syncInfo;

  /// When the data was last synced with the account; time is a formatted date and time.
  ///
  /// In en, this message translates to:
  /// **'Last synced {time}'**
  String syncLast(String time);

  /// No description provided for @syncNow.
  ///
  /// In en, this message translates to:
  /// **'Sync now'**
  String get syncNow;

  /// No description provided for @syncFailed.
  ///
  /// In en, this message translates to:
  /// **'Sync failed. It will try again automatically.'**
  String get syncFailed;

  /// No description provided for @alertEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'E-mail when an alert triggers'**
  String get alertEmailTitle;

  /// No description provided for @alertEmailOn.
  ///
  /// In en, this message translates to:
  /// **'We check your alerts every few minutes and e-mail you, even when the app is closed.'**
  String get alertEmailOn;

  /// No description provided for @alertEmailSignIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in with your e-mail in Settings to get alerts by e-mail, even when the app is closed.'**
  String get alertEmailSignIn;

  /// Title of the chart showing the total portfolio value over time.
  ///
  /// In en, this message translates to:
  /// **'Value over time'**
  String get portfolioHistory;

  /// No description provided for @portfolioReviewTitle.
  ///
  /// In en, this message translates to:
  /// **'AI portfolio review'**
  String get portfolioReviewTitle;

  /// No description provided for @portfolioReviewIntro.
  ///
  /// In en, this message translates to:
  /// **'The AI looks at your whole portfolio: concentration, sector and currency exposure, risks your stocks share, and dividends. Uses 1 analysis.'**
  String get portfolioReviewIntro;

  /// No description provided for @portfolioReviewButton.
  ///
  /// In en, this message translates to:
  /// **'Review my portfolio'**
  String get portfolioReviewButton;

  /// No description provided for @portfolioReviewAgain.
  ///
  /// In en, this message translates to:
  /// **'Review again'**
  String get portfolioReviewAgain;

  /// No description provided for @portfolioReviewWorking.
  ///
  /// In en, this message translates to:
  /// **'Reviewing your portfolio…'**
  String get portfolioReviewWorking;

  /// Settings switch (signed in): a weekly e-mail summary every Monday.
  ///
  /// In en, this message translates to:
  /// **'Weekly summary by e-mail'**
  String get digestTitle;

  /// No description provided for @digestHint.
  ///
  /// In en, this message translates to:
  /// **'Every Monday: how your favorites and portfolio moved last week, and their upcoming results dates.'**
  String get digestHint;

  /// Portfolio page, value-history card: comparison of the user's purchases with the S&P 500 index.
  ///
  /// In en, this message translates to:
  /// **'Compared with the S&P 500'**
  String get benchmarkTitle;

  /// Portfolio page, value-history card: comparison of the user's purchases with the S&P 500 index.
  ///
  /// In en, this message translates to:
  /// **'Your purchases'**
  String get benchmarkYours;

  /// Portfolio page, value-history card: comparison of the user's purchases with the S&P 500 index.
  ///
  /// In en, this message translates to:
  /// **'Same amounts in the S&P 500'**
  String get benchmarkIndex;

  /// Portfolio page, value-history card: comparison of the user's purchases with the S&P 500 index.
  ///
  /// In en, this message translates to:
  /// **'{points} percentage points better than the index'**
  String benchmarkAhead(String points);

  /// Portfolio page, value-history card: comparison of the user's purchases with the S&P 500 index.
  ///
  /// In en, this message translates to:
  /// **'{points} percentage points behind the index'**
  String benchmarkBehind(String points);

  /// Portfolio page, value-history card: comparison of the user's purchases with the S&P 500 index.
  ///
  /// In en, this message translates to:
  /// **'As if each purchase had gone into an S&P 500 index fund on the same day. Dividends not included; past returns do not predict future ones.'**
  String get benchmarkHint;

  /// Button: record a sale of shares in the portfolio.
  ///
  /// In en, this message translates to:
  /// **'Sell'**
  String get portfolioSell;

  /// Dialog title for recording a sale.
  ///
  /// In en, this message translates to:
  /// **'Sell {symbol}'**
  String portfolioSellTitle(String symbol);

  /// Field label in the sale dialog.
  ///
  /// In en, this message translates to:
  /// **'Sale price per share ({currency})'**
  String portfolioSellPrice(String currency);

  /// Field label in the sale dialog.
  ///
  /// In en, this message translates to:
  /// **'Sale date'**
  String get portfolioSellDate;

  /// Small button in the quantity field of the sale dialog: fill in all held shares.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get portfolioSellAll;

  /// Error under the quantity field when selling more shares than held.
  ///
  /// In en, this message translates to:
  /// **'You hold {quantity}'**
  String portfolioSellTooMany(String quantity);

  /// Prefix of a sale in the transaction list, e.g. 'Sold 5 × 231.45 USD'.
  ///
  /// In en, this message translates to:
  /// **'Sold'**
  String get portfolioSold;

  /// Label: realized gain or loss from sales (short, sits next to 'Gain/loss').
  ///
  /// In en, this message translates to:
  /// **'Realized'**
  String get portfolioRealized;

  /// Portfolio page section: positions whose shares were all sold.
  ///
  /// In en, this message translates to:
  /// **'Closed positions'**
  String get portfolioClosed;

  /// Subtitle of a closed position.
  ///
  /// In en, this message translates to:
  /// **'All shares sold'**
  String get portfolioClosedNote;

  /// Title/button: the list of purchases and sales of a stock.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get portfolioTransactions;

  /// Portfolio page section title: realized gains/losses from sales, one row per year.
  ///
  /// In en, this message translates to:
  /// **'Realized gains by year'**
  String get portfolioRealizedByYear;

  /// Note under the yearly realized gains.
  ///
  /// In en, this message translates to:
  /// **'Sales are matched to your oldest purchases first (FIFO), converted at today\'s exchange rate. For your tax return, use your broker\'s statement.'**
  String get portfolioRealizedHint;

  /// Line in the dialog shown when opening an older saved analysis: the company has reported quarterly results since.
  ///
  /// In en, this message translates to:
  /// **'{symbol} has published new quarterly results since this analysis ({date}).'**
  String staleNewResults(String symbol, String date);

  /// Small badge on a saved analysis in the list: the company has reported quarterly results since the analysis.
  ///
  /// In en, this message translates to:
  /// **'New results'**
  String get newResultsBadge;

  /// Note in the portfolio import dialog. Keep the broker names as they are.
  ///
  /// In en, this message translates to:
  /// **'Exports from Revolut, Trading 212 and Interactive Brokers are recognised too, with sales; dividends and deposits are skipped.'**
  String get portfolioImportBrokers;

  /// Button in the portfolio import dialog: pick a CSV file instead of pasting.
  ///
  /// In en, this message translates to:
  /// **'Choose a file'**
  String get portfolioImportFile;

  /// Banner on the stock page when there is no network and the last saved prices are shown.
  ///
  /// In en, this message translates to:
  /// **'No connection – showing the data saved on {time}.'**
  String offlineBanner(String time);

  /// Plain-language explanation of the metric shown as labelMarketCap, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'What the whole company is worth on the stock market: share price × number of shares.'**
  String get glossMarketCap;

  /// Plain-language explanation of the metric shown as labelSharesOutstanding, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'How many shares the company has issued. If it grows, each share owns a smaller slice; buybacks shrink it.'**
  String get glossSharesOutstanding;

  /// Plain-language explanation of the metric shown as labelPeTrailing, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'Price ÷ earnings per share of the last 12 months: how many years of current profit you pay for. Lower is cheaper, but fast growers usually have a high P/E.'**
  String get glossPeTrailing;

  /// Plain-language explanation of the metric shown as labelPeForward, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'Like P/E, but with the profit analysts expect for the next 12 months. Below the trailing P/E means profits are expected to grow.'**
  String get glossPeForward;

  /// Plain-language explanation of the metric shown as labelPb, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'Price ÷ book value (assets minus debts) per share. Around 1 means the market values the company at what it owns on paper.'**
  String get glossPb;

  /// Plain-language explanation of the metric shown as labelPs, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'Market value ÷ yearly revenue. Useful for companies with little or no profit yet; compare it within the same industry.'**
  String get glossPs;

  /// Plain-language explanation of the metric shown as labelEvToFcf, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'Company value including debt (EV) ÷ the cash it generates in a year after investments. Lower means you get more cash for the price.'**
  String get glossEvToFcf;

  /// Plain-language explanation of the metric shown as labelPeg, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'P/E ÷ expected yearly profit growth (%). Around 1 is often seen as fair; it puts the P/E in the light of growth.'**
  String get glossPeg;

  /// Plain-language explanation of the metric shown as labelEps, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'Profit per share over the last 12 months. Rising EPS over the years is one of the strongest signs of a healthy company.'**
  String get glossEps;

  /// Plain-language explanation of the metric shown as labelBeta, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'How much the stock tends to move with the market: 1 = like the market, 1.5 = about 50% bigger swings, below 1 = calmer.'**
  String get glossBeta;

  /// Plain-language explanation of the metric shown as labelRevenueTtm, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'Total sales of the last 12 months, before any costs.'**
  String get glossRevenueTtm;

  /// Plain-language explanation of the metric shown as labelNetIncomeTtm, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'Profit left after all costs, interest and taxes over the last 12 months.'**
  String get glossNetIncomeTtm;

  /// Plain-language explanation of the metric shown as labelGrossMargin, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'The share of revenue left after the direct cost of the products. A high margin often means pricing power.'**
  String get glossGrossMargin;

  /// Plain-language explanation of the metric shown as labelOperatingMargin, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'The share of revenue left after running the business (wages, rent, marketing), before interest and taxes.'**
  String get glossOperatingMargin;

  /// Plain-language explanation of the metric shown as labelNetMargin, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'The share of revenue that ends up as final profit. 20% means 20 of every 100 in sales is profit.'**
  String get glossNetMargin;

  /// Plain-language explanation of the metric shown as labelRoe, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'Return on equity: yearly profit ÷ the owners\' capital. Shows how well management uses shareholders\' money; above about 15% is strong.'**
  String get glossRoe;

  /// Plain-language explanation of the metric shown as labelRoa, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'Return on assets: yearly profit ÷ everything the company owns. Compare it within the same industry.'**
  String get glossRoa;

  /// Plain-language explanation of the metric shown as labelDebtToEquity, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'Debts ÷ the owners\' capital. Higher means more borrowed money: more risk when rates rise or business slows.'**
  String get glossDebtToEquity;

  /// Plain-language explanation of the metric shown as labelCurrentRatio, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'Short-term assets ÷ bills due within a year. Above 1 means the company can cover its near-term bills.'**
  String get glossCurrentRatio;

  /// Plain-language explanation of the metric shown as labelRevenueGrowth, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'How much revenue grew compared with a year earlier.'**
  String get glossRevenueGrowth;

  /// Plain-language explanation of the metric shown as labelEpsGrowth, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'How much profit per share grew compared with a year earlier.'**
  String get glossEpsGrowth;

  /// Plain-language explanation of the metric shown as labelDividendYield, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'Yearly dividend ÷ share price: the cash income you would get per year, as a percentage of what you pay.'**
  String get glossDividendYield;

  /// Plain-language explanation of the metric shown as labelDividendPerShare, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'The dividend paid on one share over the last year.'**
  String get glossDividendPerShare;

  /// Plain-language explanation of the metric shown as labelPayoutRatio, opened from the info icon on the stock page.
  ///
  /// In en, this message translates to:
  /// **'The share of profit paid out as dividends. Above 100% the company pays more than it earns, which rarely lasts.'**
  String get glossPayoutRatio;

  /// Dialog title of a metric explanation.
  ///
  /// In en, this message translates to:
  /// **'What does it mean?'**
  String get glossTitle;

  /// Home screen section and page title: latest news about the stocks in the user's portfolio and favorites.
  ///
  /// In en, this message translates to:
  /// **'News on your stocks'**
  String get watchNewsTitle;

  /// Snack bar action: undo the last action.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// Tooltip of the sort button on the favorites (watchlist) page.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get watchSort;

  /// Sort option on the favorites page: the user's own order.
  ///
  /// In en, this message translates to:
  /// **'My order'**
  String get watchSortOwn;

  /// Sort option: today's biggest gainers first.
  ///
  /// In en, this message translates to:
  /// **'Biggest gainers first'**
  String get watchSortGainers;

  /// Sort option: today's biggest losers first.
  ///
  /// In en, this message translates to:
  /// **'Biggest losers first'**
  String get watchSortLosers;

  /// Sort option: alphabetically by ticker symbol.
  ///
  /// In en, this message translates to:
  /// **'By ticker (A–Z)'**
  String get watchSortName;

  /// Hint at the top of the favorites (watchlist) page.
  ///
  /// In en, this message translates to:
  /// **'Drag the handle to reorder, swipe left to remove. The line shows the last 30 days.'**
  String get watchHint;

  /// Short message (snack bar) when an AI analysis finishes while the user is on another page; has an 'Open' button.
  ///
  /// In en, this message translates to:
  /// **'{symbol}: your analysis is ready.'**
  String analysisReady(String symbol);

  /// In the price alert dialog, above quick buttons (−20%, −10%, +10%…) that set the target relative to the user's average purchase price.
  ///
  /// In en, this message translates to:
  /// **'From your average cost ({price}):'**
  String alertFromCost(String price);

  /// Home screen card title: a short AI summary of today's moves of the user's stocks.
  ///
  /// In en, this message translates to:
  /// **'Today with your stocks'**
  String get briefTitle;

  /// Button that creates today's summary.
  ///
  /// In en, this message translates to:
  /// **'Summarize today'**
  String get briefButton;

  /// Explanation under the card title before the first summary.
  ///
  /// In en, this message translates to:
  /// **'A short AI summary of how your portfolio and favorites moved today and what the latest news says about them. It doesn\'t use an analysis.'**
  String get briefHint;

  /// Button to update today's summary.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get briefRefresh;

  /// No description provided for @sectionEarnings.
  ///
  /// In en, this message translates to:
  /// **'Earnings'**
  String get sectionEarnings;

  /// Date of the company's next quarterly results; date is formatted.
  ///
  /// In en, this message translates to:
  /// **'Next report: {date}'**
  String earningsNext(String date);

  /// No description provided for @earningsExpected.
  ///
  /// In en, this message translates to:
  /// **'Expected EPS'**
  String get earningsExpected;

  /// No description provided for @earningsReported.
  ///
  /// In en, this message translates to:
  /// **'Reported EPS'**
  String get earningsReported;

  /// How many of the last quarters the company reported earnings per share at or above analysts' expectations.
  ///
  /// In en, this message translates to:
  /// **'{total, plural, =1{At or above the expected EPS in {beats} of 1 quarter} other{At or above the expected EPS in {beats} of the last {total} quarters}}'**
  String earningsBeats(int beats, int total);

  /// Desktop notification title the day before a watched company reports results.
  ///
  /// In en, this message translates to:
  /// **'{symbol} reports quarterly results tomorrow'**
  String earningsReminderTomorrow(String symbol);

  /// Desktop notification title on the day a watched company reports results.
  ///
  /// In en, this message translates to:
  /// **'{symbol} reports quarterly results today'**
  String earningsReminderToday(String symbol);

  /// No description provided for @earningsRemindersTitle.
  ///
  /// In en, this message translates to:
  /// **'Results reminders'**
  String get earningsRemindersTitle;

  /// No description provided for @earningsRemindersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A notification the day before your favorites or portfolio stocks report quarterly results'**
  String get earningsRemindersSubtitle;

  /// Button under the list of stocks recognised in one photo; count is how many are not yet favorites.
  ///
  /// In en, this message translates to:
  /// **'Add all to favorites ({count})'**
  String addAllToFavorites(int count);

  /// Portfolio menu item: read positions from a picture of a brokerage app screen.
  ///
  /// In en, this message translates to:
  /// **'Import from a screenshot'**
  String get portfolioImportPhoto;

  /// No description provided for @holdingsReading.
  ///
  /// In en, this message translates to:
  /// **'Reading your positions…'**
  String get holdingsReading;

  /// No description provided for @holdingsReviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Positions found'**
  String get holdingsReviewTitle;

  /// No description provided for @holdingsReviewHint.
  ///
  /// In en, this message translates to:
  /// **'Check the numbers before adding them. The price is your average purchase price per share, not today\'s price.'**
  String get holdingsReviewHint;

  /// No description provided for @holdingsNoPrice.
  ///
  /// In en, this message translates to:
  /// **'No average purchase price on the picture'**
  String get holdingsNoPrice;

  /// No description provided for @holdingsAdd.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Add 1 position} other{Add {count} positions}}'**
  String holdingsAdd(int count);

  /// No description provided for @holdingsNone.
  ///
  /// In en, this message translates to:
  /// **'No stock positions found on this picture. Try a screenshot of your broker\'s positions or holdings page.'**
  String get holdingsNone;

  /// No description provided for @week52Range.
  ///
  /// In en, this message translates to:
  /// **'52-week range'**
  String get week52Range;

  /// Under a bar showing where today's price sits between the yearly low and high; percent is formatted, e.g. "12.4%".
  ///
  /// In en, this message translates to:
  /// **'{percent} below the 52-week high'**
  String week52BelowHigh(String percent);

  /// No description provided for @week52AtHigh.
  ///
  /// In en, this message translates to:
  /// **'At the 52-week high'**
  String get week52AtHigh;

  /// Alert type chip: a trailing stop – fires when the price falls a set percentage from its highest point since the alert was set.
  ///
  /// In en, this message translates to:
  /// **'Drop from peak'**
  String get alertKindTrailing;

  /// No description provided for @alertTrailingPercent.
  ///
  /// In en, this message translates to:
  /// **'Drop from the peak (%)'**
  String get alertTrailingPercent;

  /// No description provided for @alertTrailingHint.
  ///
  /// In en, this message translates to:
  /// **'Follows the price up: the alert goes off when the price falls this much from its highest point since you set it.'**
  String get alertTrailingHint;

  /// Short description of a trailing-stop alert; percent like "10%".
  ///
  /// In en, this message translates to:
  /// **'{percent} drop from its peak'**
  String alertDescTrailing(String percent);

  /// No description provided for @alertTrailingPeak.
  ///
  /// In en, this message translates to:
  /// **'peak so far: {price}'**
  String alertTrailingPeak(String price);

  /// Notification title when a trailing-stop alert fires.
  ///
  /// In en, this message translates to:
  /// **'{symbol} fell {percent} from its peak'**
  String alertHitTrailing(String symbol, String percent);

  /// Card title: shares bought and sold on the open market by the company's executives and directors.
  ///
  /// In en, this message translates to:
  /// **'Insider trades'**
  String get sectionInsiders;

  /// No description provided for @insiderBuys.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 purchase} other{{count} purchases}}'**
  String insiderBuys(int count);

  /// No description provided for @insiderSells.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 sale} other{{count} sales}}'**
  String insiderSells(int count);

  /// Net number of shares insiders bought (+) or sold (−); shares is formatted like "−42K".
  ///
  /// In en, this message translates to:
  /// **'Net: {shares} shares'**
  String insiderNet(String shares);

  /// No description provided for @insiderBuy.
  ///
  /// In en, this message translates to:
  /// **'Bought'**
  String get insiderBuy;

  /// No description provided for @insiderSell.
  ///
  /// In en, this message translates to:
  /// **'Sold'**
  String get insiderSell;

  /// No description provided for @insiderHint.
  ///
  /// In en, this message translates to:
  /// **'Open-market purchases and sales by executives and directors in the last 90 days (SEC Form 4). Option exercises and share awards are not counted.'**
  String get insiderHint;

  /// No description provided for @insiderNone.
  ///
  /// In en, this message translates to:
  /// **'No open-market insider purchases or sales in the last 90 days.'**
  String get insiderNone;

  /// Caption above small stacked bars showing analysts' buy/hold/sell mix in each of the last months.
  ///
  /// In en, this message translates to:
  /// **'How the views changed, month by month'**
  String get analystTrend;

  /// Chip on the favorites page showing all favorites (not just one of the user's own lists).
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get watchListAll;

  /// No description provided for @watchListNew.
  ///
  /// In en, this message translates to:
  /// **'New list'**
  String get watchListNew;

  /// No description provided for @watchListName.
  ///
  /// In en, this message translates to:
  /// **'List name'**
  String get watchListName;

  /// No description provided for @watchListRename.
  ///
  /// In en, this message translates to:
  /// **'Rename list'**
  String get watchListRename;

  /// No description provided for @watchListDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete list'**
  String get watchListDelete;

  /// No description provided for @watchListAddTo.
  ///
  /// In en, this message translates to:
  /// **'Add to a list'**
  String get watchListAddTo;

  /// No description provided for @watchListEmpty.
  ///
  /// In en, this message translates to:
  /// **'No stocks in this list yet. Tap the list button next to a stock to add it.'**
  String get watchListEmpty;

  /// Title of the sheet where the user asks the AI follow-up questions about its portfolio review.
  ///
  /// In en, this message translates to:
  /// **'Questions about your portfolio'**
  String get portfolioAskTitle;

  /// Very short label: return since the start of this year (year to date), next to 1W, 1M, 3M, 1Y, 5Y.
  ///
  /// In en, this message translates to:
  /// **'YTD'**
  String get rangeYtd;

  /// No description provided for @backupTitle.
  ///
  /// In en, this message translates to:
  /// **'Backup'**
  String get backupTitle;

  /// No description provided for @backupSave.
  ///
  /// In en, this message translates to:
  /// **'Save a backup'**
  String get backupSave;

  /// No description provided for @backupSaveHint.
  ///
  /// In en, this message translates to:
  /// **'Your favorites, lists, portfolio, alerts and notes in one file.'**
  String get backupSaveHint;

  /// No description provided for @backupRestore.
  ///
  /// In en, this message translates to:
  /// **'Restore from a backup'**
  String get backupRestore;

  /// No description provided for @backupRestoreHint.
  ///
  /// In en, this message translates to:
  /// **'Adds what is in the file; nothing you have now is deleted.'**
  String get backupRestoreHint;

  /// No description provided for @backupRestored.
  ///
  /// In en, this message translates to:
  /// **'Backup restored.'**
  String get backupRestored;

  /// No description provided for @backupInvalid.
  ///
  /// In en, this message translates to:
  /// **'This file is not a WhatStock backup.'**
  String get backupInvalid;

  /// Segment of a toggle on the portfolio allocation card: split by individual stocks. Very short.
  ///
  /// In en, this message translates to:
  /// **'Stocks'**
  String get allocationPositions;

  /// No description provided for @allocationSectors.
  ///
  /// In en, this message translates to:
  /// **'Sectors'**
  String get allocationSectors;

  /// No description provided for @allocationCurrencies.
  ///
  /// In en, this message translates to:
  /// **'Currencies'**
  String get allocationCurrencies;
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
    'af',
    'ak',
    'am',
    'ar',
    'as',
    'az',
    'be',
    'bg',
    'bho',
    'bm',
    'bn',
    'bo',
    'bs',
    'ca',
    'ceb',
    'ckb',
    'cs',
    'da',
    'de',
    'ee',
    'el',
    'en',
    'es',
    'fa',
    'ff',
    'fi',
    'fil',
    'fr',
    'gl',
    'gn',
    'gu',
    'ha',
    'he',
    'hi',
    'hil',
    'hr',
    'ht',
    'hu',
    'hy',
    'id',
    'ig',
    'ilo',
    'it',
    'ja',
    'jv',
    'ka',
    'kab',
    'kg',
    'ki',
    'kk',
    'km',
    'kn',
    'ko',
    'ku',
    'ky',
    'lg',
    'ln',
    'lo',
    'lt',
    'lua',
    'lv',
    'mai',
    'mg',
    'mk',
    'ml',
    'mn',
    'mos',
    'mr',
    'ms',
    'my',
    'nb',
    'ne',
    'nl',
    'nso',
    'ny',
    'om',
    'or',
    'pa',
    'pcm',
    'pl',
    'ps',
    'pt',
    'qu',
    'rn',
    'ro',
    'ru',
    'rw',
    'sd',
    'si',
    'sk',
    'sl',
    'sn',
    'so',
    'sq',
    'sr',
    'st',
    'su',
    'sv',
    'sw',
    'ta',
    'te',
    'tg',
    'th',
    'ti',
    'tk',
    'tn',
    'tr',
    'ts',
    'tt',
    'ug',
    'uk',
    'ur',
    'uz',
    'vi',
    'wo',
    'xh',
    'yo',
    'zh',
    'zu',
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
    case 'af':
      return AppLocalizationsAf();
    case 'ak':
      return AppLocalizationsAk();
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'as':
      return AppLocalizationsAs();
    case 'az':
      return AppLocalizationsAz();
    case 'be':
      return AppLocalizationsBe();
    case 'bg':
      return AppLocalizationsBg();
    case 'bho':
      return AppLocalizationsBho();
    case 'bm':
      return AppLocalizationsBm();
    case 'bn':
      return AppLocalizationsBn();
    case 'bo':
      return AppLocalizationsBo();
    case 'bs':
      return AppLocalizationsBs();
    case 'ca':
      return AppLocalizationsCa();
    case 'ceb':
      return AppLocalizationsCeb();
    case 'ckb':
      return AppLocalizationsCkb();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'ee':
      return AppLocalizationsEe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'ff':
      return AppLocalizationsFf();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'gl':
      return AppLocalizationsGl();
    case 'gn':
      return AppLocalizationsGn();
    case 'gu':
      return AppLocalizationsGu();
    case 'ha':
      return AppLocalizationsHa();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hil':
      return AppLocalizationsHil();
    case 'hr':
      return AppLocalizationsHr();
    case 'ht':
      return AppLocalizationsHt();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'ig':
      return AppLocalizationsIg();
    case 'ilo':
      return AppLocalizationsIlo();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'jv':
      return AppLocalizationsJv();
    case 'ka':
      return AppLocalizationsKa();
    case 'kab':
      return AppLocalizationsKab();
    case 'kg':
      return AppLocalizationsKg();
    case 'ki':
      return AppLocalizationsKi();
    case 'kk':
      return AppLocalizationsKk();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ku':
      return AppLocalizationsKu();
    case 'ky':
      return AppLocalizationsKy();
    case 'lg':
      return AppLocalizationsLg();
    case 'ln':
      return AppLocalizationsLn();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lua':
      return AppLocalizationsLua();
    case 'lv':
      return AppLocalizationsLv();
    case 'mai':
      return AppLocalizationsMai();
    case 'mg':
      return AppLocalizationsMg();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mos':
      return AppLocalizationsMos();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'my':
      return AppLocalizationsMy();
    case 'nb':
      return AppLocalizationsNb();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'nso':
      return AppLocalizationsNso();
    case 'ny':
      return AppLocalizationsNy();
    case 'om':
      return AppLocalizationsOm();
    case 'or':
      return AppLocalizationsOr();
    case 'pa':
      return AppLocalizationsPa();
    case 'pcm':
      return AppLocalizationsPcm();
    case 'pl':
      return AppLocalizationsPl();
    case 'ps':
      return AppLocalizationsPs();
    case 'pt':
      return AppLocalizationsPt();
    case 'qu':
      return AppLocalizationsQu();
    case 'rn':
      return AppLocalizationsRn();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'rw':
      return AppLocalizationsRw();
    case 'sd':
      return AppLocalizationsSd();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sn':
      return AppLocalizationsSn();
    case 'so':
      return AppLocalizationsSo();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'st':
      return AppLocalizationsSt();
    case 'su':
      return AppLocalizationsSu();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'tg':
      return AppLocalizationsTg();
    case 'th':
      return AppLocalizationsTh();
    case 'ti':
      return AppLocalizationsTi();
    case 'tk':
      return AppLocalizationsTk();
    case 'tn':
      return AppLocalizationsTn();
    case 'tr':
      return AppLocalizationsTr();
    case 'ts':
      return AppLocalizationsTs();
    case 'tt':
      return AppLocalizationsTt();
    case 'ug':
      return AppLocalizationsUg();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'uz':
      return AppLocalizationsUz();
    case 'vi':
      return AppLocalizationsVi();
    case 'wo':
      return AppLocalizationsWo();
    case 'xh':
      return AppLocalizationsXh();
    case 'yo':
      return AppLocalizationsYo();
    case 'zh':
      return AppLocalizationsZh();
    case 'zu':
      return AppLocalizationsZu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
