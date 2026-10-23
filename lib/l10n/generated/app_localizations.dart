import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart' deferred as app_localizations_af;
import 'app_localizations_ak.dart' deferred as app_localizations_ak;
import 'app_localizations_am.dart' deferred as app_localizations_am;
import 'app_localizations_ar.dart' deferred as app_localizations_ar;
import 'app_localizations_as.dart' deferred as app_localizations_as;
import 'app_localizations_az.dart' deferred as app_localizations_az;
import 'app_localizations_be.dart' deferred as app_localizations_be;
import 'app_localizations_bg.dart' deferred as app_localizations_bg;
import 'app_localizations_bho.dart' deferred as app_localizations_bho;
import 'app_localizations_bm.dart' deferred as app_localizations_bm;
import 'app_localizations_bn.dart' deferred as app_localizations_bn;
import 'app_localizations_bo.dart' deferred as app_localizations_bo;
import 'app_localizations_bs.dart' deferred as app_localizations_bs;
import 'app_localizations_ca.dart' deferred as app_localizations_ca;
import 'app_localizations_ceb.dart' deferred as app_localizations_ceb;
import 'app_localizations_ckb.dart' deferred as app_localizations_ckb;
import 'app_localizations_cs.dart' deferred as app_localizations_cs;
import 'app_localizations_da.dart' deferred as app_localizations_da;
import 'app_localizations_de.dart' deferred as app_localizations_de;
import 'app_localizations_ee.dart' deferred as app_localizations_ee;
import 'app_localizations_el.dart' deferred as app_localizations_el;
import 'app_localizations_en.dart' deferred as app_localizations_en;
import 'app_localizations_es.dart' deferred as app_localizations_es;
import 'app_localizations_fa.dart' deferred as app_localizations_fa;
import 'app_localizations_ff.dart' deferred as app_localizations_ff;
import 'app_localizations_fi.dart' deferred as app_localizations_fi;
import 'app_localizations_fil.dart' deferred as app_localizations_fil;
import 'app_localizations_fr.dart' deferred as app_localizations_fr;
import 'app_localizations_gl.dart' deferred as app_localizations_gl;
import 'app_localizations_gn.dart' deferred as app_localizations_gn;
import 'app_localizations_gu.dart' deferred as app_localizations_gu;
import 'app_localizations_ha.dart' deferred as app_localizations_ha;
import 'app_localizations_he.dart' deferred as app_localizations_he;
import 'app_localizations_hi.dart' deferred as app_localizations_hi;
import 'app_localizations_hil.dart' deferred as app_localizations_hil;
import 'app_localizations_hr.dart' deferred as app_localizations_hr;
import 'app_localizations_ht.dart' deferred as app_localizations_ht;
import 'app_localizations_hu.dart' deferred as app_localizations_hu;
import 'app_localizations_hy.dart' deferred as app_localizations_hy;
import 'app_localizations_id.dart' deferred as app_localizations_id;
import 'app_localizations_ig.dart' deferred as app_localizations_ig;
import 'app_localizations_ilo.dart' deferred as app_localizations_ilo;
import 'app_localizations_it.dart' deferred as app_localizations_it;
import 'app_localizations_ja.dart' deferred as app_localizations_ja;
import 'app_localizations_jv.dart' deferred as app_localizations_jv;
import 'app_localizations_ka.dart' deferred as app_localizations_ka;
import 'app_localizations_kab.dart' deferred as app_localizations_kab;
import 'app_localizations_kg.dart' deferred as app_localizations_kg;
import 'app_localizations_ki.dart' deferred as app_localizations_ki;
import 'app_localizations_kk.dart' deferred as app_localizations_kk;
import 'app_localizations_km.dart' deferred as app_localizations_km;
import 'app_localizations_kn.dart' deferred as app_localizations_kn;
import 'app_localizations_ko.dart' deferred as app_localizations_ko;
import 'app_localizations_ku.dart' deferred as app_localizations_ku;
import 'app_localizations_ky.dart' deferred as app_localizations_ky;
import 'app_localizations_lg.dart' deferred as app_localizations_lg;
import 'app_localizations_ln.dart' deferred as app_localizations_ln;
import 'app_localizations_lo.dart' deferred as app_localizations_lo;
import 'app_localizations_lt.dart' deferred as app_localizations_lt;
import 'app_localizations_lua.dart' deferred as app_localizations_lua;
import 'app_localizations_lv.dart' deferred as app_localizations_lv;
import 'app_localizations_mai.dart' deferred as app_localizations_mai;
import 'app_localizations_mg.dart' deferred as app_localizations_mg;
import 'app_localizations_mk.dart' deferred as app_localizations_mk;
import 'app_localizations_ml.dart' deferred as app_localizations_ml;
import 'app_localizations_mn.dart' deferred as app_localizations_mn;
import 'app_localizations_mos.dart' deferred as app_localizations_mos;
import 'app_localizations_mr.dart' deferred as app_localizations_mr;
import 'app_localizations_ms.dart' deferred as app_localizations_ms;
import 'app_localizations_my.dart' deferred as app_localizations_my;
import 'app_localizations_nb.dart' deferred as app_localizations_nb;
import 'app_localizations_ne.dart' deferred as app_localizations_ne;
import 'app_localizations_nl.dart' deferred as app_localizations_nl;
import 'app_localizations_nso.dart' deferred as app_localizations_nso;
import 'app_localizations_ny.dart' deferred as app_localizations_ny;
import 'app_localizations_om.dart' deferred as app_localizations_om;
import 'app_localizations_or.dart' deferred as app_localizations_or;
import 'app_localizations_pa.dart' deferred as app_localizations_pa;
import 'app_localizations_pcm.dart' deferred as app_localizations_pcm;
import 'app_localizations_pl.dart' deferred as app_localizations_pl;
import 'app_localizations_ps.dart' deferred as app_localizations_ps;
import 'app_localizations_pt.dart' deferred as app_localizations_pt;
import 'app_localizations_qu.dart' deferred as app_localizations_qu;
import 'app_localizations_rn.dart' deferred as app_localizations_rn;
import 'app_localizations_ro.dart' deferred as app_localizations_ro;
import 'app_localizations_ru.dart' deferred as app_localizations_ru;
import 'app_localizations_rw.dart' deferred as app_localizations_rw;
import 'app_localizations_sd.dart' deferred as app_localizations_sd;
import 'app_localizations_si.dart' deferred as app_localizations_si;
import 'app_localizations_sk.dart' deferred as app_localizations_sk;
import 'app_localizations_sl.dart' deferred as app_localizations_sl;
import 'app_localizations_sn.dart' deferred as app_localizations_sn;
import 'app_localizations_so.dart' deferred as app_localizations_so;
import 'app_localizations_sq.dart' deferred as app_localizations_sq;
import 'app_localizations_sr.dart' deferred as app_localizations_sr;
import 'app_localizations_st.dart' deferred as app_localizations_st;
import 'app_localizations_su.dart' deferred as app_localizations_su;
import 'app_localizations_sv.dart' deferred as app_localizations_sv;
import 'app_localizations_sw.dart' deferred as app_localizations_sw;
import 'app_localizations_ta.dart' deferred as app_localizations_ta;
import 'app_localizations_te.dart' deferred as app_localizations_te;
import 'app_localizations_tg.dart' deferred as app_localizations_tg;
import 'app_localizations_th.dart' deferred as app_localizations_th;
import 'app_localizations_ti.dart' deferred as app_localizations_ti;
import 'app_localizations_tk.dart' deferred as app_localizations_tk;
import 'app_localizations_tn.dart' deferred as app_localizations_tn;
import 'app_localizations_tr.dart' deferred as app_localizations_tr;
import 'app_localizations_ts.dart' deferred as app_localizations_ts;
import 'app_localizations_tt.dart' deferred as app_localizations_tt;
import 'app_localizations_ug.dart' deferred as app_localizations_ug;
import 'app_localizations_uk.dart' deferred as app_localizations_uk;
import 'app_localizations_ur.dart' deferred as app_localizations_ur;
import 'app_localizations_uz.dart' deferred as app_localizations_uz;
import 'app_localizations_vi.dart' deferred as app_localizations_vi;
import 'app_localizations_wo.dart' deferred as app_localizations_wo;
import 'app_localizations_xh.dart' deferred as app_localizations_xh;
import 'app_localizations_yo.dart' deferred as app_localizations_yo;
import 'app_localizations_zh.dart' deferred as app_localizations_zh;
import 'app_localizations_zu.dart' deferred as app_localizations_zu;

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

  /// No description provided for @labelYieldOnCost.
  ///
  /// In en, this message translates to:
  /// **'Yield on cost'**
  String get labelYieldOnCost;

  /// Row label on the stock page and in the comparison: average yearly growth of the dividend per share over the last five years, in percent.
  ///
  /// In en, this message translates to:
  /// **'Dividend growth (5y)'**
  String get labelDividendGrowth5y;

  /// Shown in the stock page's Dividend card instead of the rows when the company paid no dividend in the last 12 months.
  ///
  /// In en, this message translates to:
  /// **'No dividend paid in the last 12 months.'**
  String get dividendNone;

  /// Row label in the stock page's Dividend card when the stock is in the user's portfolio; the value is the approximate yearly dividend for the shares they hold, like '~ 41.60 USD'.
  ///
  /// In en, this message translates to:
  /// **'On your shares, a year'**
  String get dividendOnYourShares;

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

  /// Footnote on the portfolio page: where the data is kept (this device, and the account when signed in), how totals are converted, and that prices may be delayed.
  ///
  /// In en, this message translates to:
  /// **'Kept on this device, and in your account if you\'re signed in. Totals are converted at ECB reference rates; prices may be delayed.'**
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

  /// Line on the home portfolio card: dividends received in the current year; {amount} is a formatted money amount.
  ///
  /// In en, this message translates to:
  /// **'Dividends this year: {amount}'**
  String homeDividendsThisYear(String amount);

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

  /// Title of an upcoming-events entry: a dividend payment expected from this stock, estimated from the recorded payments.
  ///
  /// In en, this message translates to:
  /// **'Dividend expected'**
  String get eventDividend;

  /// No description provided for @eventDividendEstimate.
  ///
  /// In en, this message translates to:
  /// **'Estimated from your recorded payments'**
  String get eventDividendEstimate;

  /// No description provided for @eventsHint.
  ///
  /// In en, this message translates to:
  /// **'Results dates of your favorites and portfolio stocks for the next 90 days, the dated events your analyses flagged, and the dividends expected from the payments you recorded.'**
  String get eventsHint;

  /// No description provided for @eventsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No dated events in the next 90 days. Add favorites or portfolio stocks to see their results dates here; recorded dividends show their expected next payment.'**
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

  /// Under the personal notes field on a stock page: where the notes are kept (this device, and the account when signed in) and that the AI analysis reads them.
  ///
  /// In en, this message translates to:
  /// **'Kept on this device, and in your account if you\'re signed in. The AI analysis takes your notes into account.'**
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

  /// After importing: how many transactions (buys and sells) were added.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 transaction added} other{{count} transactions added}}'**
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

  /// Portfolio page, value-history card: title of the comparison of the user's purchases with a chosen stock index (S&P 500, Nasdaq 100 or Dow Jones, picked with chips below).
  ///
  /// In en, this message translates to:
  /// **'Compared with an index'**
  String get benchmarkTitleIndex;

  /// Portfolio page, value-history card: explanation under the comparison with the chosen index.
  ///
  /// In en, this message translates to:
  /// **'As if each purchase had gone into a fund tracking the chosen index on the same day. Dividends not included; past returns do not predict future ones.'**
  String get benchmarkHintIndex;

  /// Portfolio page, value-history card: comparison of the user's purchases with the S&P 500 index.
  ///
  /// In en, this message translates to:
  /// **'Your purchases'**
  String get benchmarkYours;

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
  /// **'Exports from Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity and Robinhood are recognised too, with sales and dividends (net of withholding tax); deposits are skipped.'**
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

  /// Figure on the portfolio's allocation card: the value-weighted average beta of the held stocks, like '1.12'.
  ///
  /// In en, this message translates to:
  /// **'Portfolio beta'**
  String get portfolioBeta;

  /// Plain-language explanation of the portfolio beta, opened from the info icon and listed in the glossary.
  ///
  /// In en, this message translates to:
  /// **'The beta of your stocks, weighted by their value: roughly how many percent your stocks move when the market moves 1%. Above 1 they swing more than the market, below 1 less. Cash is not included.'**
  String get glossPortfolioBeta;

  /// Figure on the portfolio's allocation card: the combined share of the three largest positions in the value of the stocks, like '64%'.
  ///
  /// In en, this message translates to:
  /// **'Top 3 positions'**
  String get portfolioTop3;

  /// Plain-language explanation of the top-3 concentration figure, opened from the info icon and listed in the glossary.
  ///
  /// In en, this message translates to:
  /// **'How much of your stocks\' value sits in your three largest positions. The higher it is, the more bad news at a single company can hurt the whole portfolio.'**
  String get glossPortfolioTop3;

  /// Plain-language explanation of the metric shown as labelDividendGrowth5y, opened from the info icon on the stock page and listed in the glossary.
  ///
  /// In en, this message translates to:
  /// **'How much the dividend per share grew a year on average over the last five years. Steady growth usually means the company trusts its cash flow; a cut is often a warning sign.'**
  String get glossDividendGrowth5y;

  /// Plain-language explanation of the figure shown as labelYieldOnCost on the position card and in the glossary.
  ///
  /// In en, this message translates to:
  /// **'Dividends received in the last 12 months divided by what you paid for the shares you still hold. Unlike the dividend yield, it is measured against your own purchase price, not today\'s price.'**
  String get glossYieldOnCost;

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

  /// Desktop notification title on the day a dividend is expected from the rhythm of the user's recorded payments.
  ///
  /// In en, this message translates to:
  /// **'{symbol} dividend expected today'**
  String dividendReminderTitle(String symbol);

  /// Desktop notification body for an expected dividend; {amount} is like '~ 4.68 USD' (an estimate from the last payment).
  ///
  /// In en, this message translates to:
  /// **'About {amount}. Record it in your portfolio once it arrives.'**
  String dividendReminderBody(String amount);

  /// Settings switch title: notifications on the day an expected dividend should arrive.
  ///
  /// In en, this message translates to:
  /// **'Dividend reminders'**
  String get dividendRemindersTitle;

  /// Settings switch subtitle for dividend reminders.
  ///
  /// In en, this message translates to:
  /// **'A notification on the day a dividend is expected from the rhythm of your recorded payments, so you can record it'**
  String get dividendRemindersSubtitle;

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

  /// Segment of the portfolio allocation card: split the portfolio by brokerage account (e.g. TBSZ, regular). Short, like the other segments (Positions, Sectors, Countries, Currencies).
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get allocationAccounts;

  /// Row label in the stock comparison table: price change over the last year.
  ///
  /// In en, this message translates to:
  /// **'1-year return'**
  String get compareReturn1y;

  /// Row label in the stock comparison table: how far the price is below its 52-week high, in %.
  ///
  /// In en, this message translates to:
  /// **'From 52-week high'**
  String get compareFromHigh;

  /// Settings switch: the "Today with your stocks" AI summary is made automatically each morning.
  ///
  /// In en, this message translates to:
  /// **'Daily summary every morning'**
  String get briefAutoTitle;

  /// No description provided for @briefAutoSubtitle.
  ///
  /// In en, this message translates to:
  /// **'“Today with your stocks” is made automatically after 7 am while the app is running; on computers a notification tells you. Uses your daily question allowance, not an analysis.'**
  String get briefAutoSubtitle;

  /// No description provided for @targetsButton.
  ///
  /// In en, this message translates to:
  /// **'Target allocation'**
  String get targetsButton;

  /// No description provided for @targetsTitle.
  ///
  /// In en, this message translates to:
  /// **'Target allocation'**
  String get targetsTitle;

  /// No description provided for @targetsHint.
  ///
  /// In en, this message translates to:
  /// **'Set what share of the portfolio each stock should have. Leave a field empty for no target. The app then shows what to buy or sell to get there.'**
  String get targetsHint;

  /// No description provided for @targetsSum.
  ///
  /// In en, this message translates to:
  /// **'Total: {percent}'**
  String targetsSum(String percent);

  /// How much more of a stock to buy to reach its target share; amount is formatted money.
  ///
  /// In en, this message translates to:
  /// **'Buy ≈ {amount}'**
  String rebalanceBuy(String amount);

  /// How much of a stock to sell to get down to its target share.
  ///
  /// In en, this message translates to:
  /// **'Sell ≈ {amount}'**
  String rebalanceSell(String amount);

  /// No description provided for @rebalanceOk.
  ///
  /// In en, this message translates to:
  /// **'On target'**
  String get rebalanceOk;

  /// Desktop notification title after a watched company reported quarterly earnings per share at or above analysts' expectations.
  ///
  /// In en, this message translates to:
  /// **'{symbol} beat the expected EPS'**
  String earningsResultBeat(String symbol);

  /// Notification title when the reported EPS was below expectations.
  ///
  /// In en, this message translates to:
  /// **'{symbol} missed the expected EPS'**
  String earningsResultMiss(String symbol);

  /// No description provided for @earningsResultBody.
  ///
  /// In en, this message translates to:
  /// **'Reported EPS {actual}, expected {estimate}'**
  String earningsResultBody(String actual, String estimate);

  /// Button next to a news headline: a short AI explanation of what the news could mean for the stock.
  ///
  /// In en, this message translates to:
  /// **'What does this mean?'**
  String get newsExplain;

  /// Favorites page menu item / dialog title: set a daily-move price alert on every stock in the list at once.
  ///
  /// In en, this message translates to:
  /// **'Alert on big daily moves'**
  String get watchAlertAll;

  /// No description provided for @watchAlertAllHint.
  ///
  /// In en, this message translates to:
  /// **'A price alert for every stock in this list that goes off when it moves this much in a day, up or down. Stocks that already have one keep theirs.'**
  String get watchAlertAllHint;

  /// No description provided for @watchAlertAllDone.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 alert set} other{{count} alerts set}}'**
  String watchAlertAllDone(int count);

  /// Portfolio menu item: one row per sale with FIFO cost basis and gain, e.g. for a tax return.
  ///
  /// In en, this message translates to:
  /// **'Export realized gains (CSV)'**
  String get portfolioExportRealized;

  /// No description provided for @portfolioAnnualReturn.
  ///
  /// In en, this message translates to:
  /// **'Annual return'**
  String get portfolioAnnualReturn;

  /// Annualized return value, e.g. '+12.3% / year'.
  ///
  /// In en, this message translates to:
  /// **'{percent} / year'**
  String portfolioPerYear(String percent);

  /// Tooltip explaining the annualized (XIRR) return on the portfolio summary.
  ///
  /// In en, this message translates to:
  /// **'Money-weighted annual return (XIRR): it takes into account when you bought and sold, so money added later doesn\'t distort it. Shown once your first purchase is at least a year old; dividends are not included.'**
  String get portfolioAnnualReturnHint;

  /// Tooltip of the button on the Upcoming events page that saves all events as an .ics calendar file.
  ///
  /// In en, this message translates to:
  /// **'Add to calendar (.ics)'**
  String get eventsAddToCalendar;

  /// No description provided for @portfolioMoveAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'Portfolio alert'**
  String get portfolioMoveAlertTitle;

  /// No description provided for @portfolioMoveAlertSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A notification when your whole portfolio moves this much in a day.'**
  String get portfolioMoveAlertSubtitle;

  /// Dropdown option: the portfolio alert is turned off.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get portfolioMoveAlertOff;

  /// Desktop notification title when the whole portfolio rose at least the chosen threshold today; percent like '3.2%'.
  ///
  /// In en, this message translates to:
  /// **'Your portfolio is up {percent} today'**
  String portfolioMoveUp(String percent);

  /// Same, when it fell.
  ///
  /// In en, this message translates to:
  /// **'Your portfolio is down {percent} today'**
  String portfolioMoveDown(String percent);

  /// No description provided for @whatIfTitle.
  ///
  /// In en, this message translates to:
  /// **'What if you had invested?'**
  String get whatIfTitle;

  /// No description provided for @whatIfAmount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get whatIfAmount;

  /// Above the big result number on the 'What if' card. {amount} like '1,000.00 USD', {period} like '5 years' (from longTermYears).
  ///
  /// In en, this message translates to:
  /// **'{amount} invested {period} ago would be worth today'**
  String whatIfResult(String amount, String period);

  /// No description provided for @whatIfNote.
  ///
  /// In en, this message translates to:
  /// **'Based on the share price only: dividends, fees and taxes are not included. Past returns don\'t predict future ones.'**
  String get whatIfNote;

  /// No description provided for @watchShare.
  ///
  /// In en, this message translates to:
  /// **'Share the list'**
  String get watchShare;

  /// No description provided for @watchImport.
  ///
  /// In en, this message translates to:
  /// **'Add tickers'**
  String get watchImport;

  /// No description provided for @watchImportHint.
  ///
  /// In en, this message translates to:
  /// **'Paste tickers separated by commas, spaces or new lines – for example a list someone shared with you.'**
  String get watchImportHint;

  /// Snackbar after pasting tickers into the favorites.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No new stocks} =1{1 stock added} other{{count} stocks added}}'**
  String watchImported(int count);

  /// No description provided for @positionsSortWeight.
  ///
  /// In en, this message translates to:
  /// **'Largest first'**
  String get positionsSortWeight;

  /// No description provided for @positionsSortGain.
  ///
  /// In en, this message translates to:
  /// **'Best total return first'**
  String get positionsSortGain;

  /// No description provided for @positionsSortToday.
  ///
  /// In en, this message translates to:
  /// **'Best today first'**
  String get positionsSortToday;

  /// No description provided for @chartMyBuys.
  ///
  /// In en, this message translates to:
  /// **'Your buys'**
  String get chartMyBuys;

  /// No description provided for @chartMySells.
  ///
  /// In en, this message translates to:
  /// **'Your sales'**
  String get chartMySells;

  /// No description provided for @shortcutsTitle.
  ///
  /// In en, this message translates to:
  /// **'Keyboard shortcuts'**
  String get shortcutsTitle;

  /// Home screen, next to 'Markets today'. {time} is a short duration like '2 h 15 min'.
  ///
  /// In en, this message translates to:
  /// **'US market open · closes in {time}'**
  String usMarketOpen(String time);

  /// Same, when the US stock market is closed.
  ///
  /// In en, this message translates to:
  /// **'US market closed · opens in {time}'**
  String usMarketClosed(String time);

  /// No description provided for @durationMinutes.
  ///
  /// In en, this message translates to:
  /// **'{minutes} min'**
  String durationMinutes(int minutes);

  /// No description provided for @durationHoursMinutes.
  ///
  /// In en, this message translates to:
  /// **'{hours} h {minutes} min'**
  String durationHoursMinutes(int hours, int minutes);

  /// No description provided for @durationDaysHours.
  ///
  /// In en, this message translates to:
  /// **'{days} d {hours} h'**
  String durationDaysHours(int days, int hours);

  /// Button in the Dividends received card: set a target for the monthly dividend income.
  ///
  /// In en, this message translates to:
  /// **'Set a monthly dividend goal'**
  String get dividendGoalSet;

  /// Title of the dialog that sets the monthly dividend income target; also the accessibility label of its progress bar.
  ///
  /// In en, this message translates to:
  /// **'Monthly dividend goal'**
  String get dividendGoalTitle;

  /// Field label in the monthly dividend goal dialog; the currency code is shown after the number.
  ///
  /// In en, this message translates to:
  /// **'Dividends a month'**
  String get dividendGoalAmount;

  /// Under the dividends card: progress towards the monthly dividend goal. {amount} like '18,500 HUF' (expected yearly dividend of the held stocks divided by 12), {percent} like '37%', {goal} like '50,000 HUF'.
  ///
  /// In en, this message translates to:
  /// **'About {amount} a month at today\'s yields: {percent} of your {goal} goal'**
  String dividendGoalProgress(String amount, String percent, String goal);

  /// Under the dividends card when the expected monthly dividend reaches the goal. {amount} like '52,000 HUF', {goal} like '50,000 HUF'.
  ///
  /// In en, this message translates to:
  /// **'About {amount} a month at today\'s yields: your {goal} goal is reached'**
  String dividendGoalReached(String amount, String goal);

  /// Field label in the buy/sell dialog: the brokerage account the transaction belongs to (e.g. a tax-advantaged account).
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get portfolioAccount;

  /// Hint in the account field of the buy/sell dialog. TBSZ is a Hungarian tax-advantaged securities account; translators may use a local example of such an account.
  ///
  /// In en, this message translates to:
  /// **'e.g. TBSZ 2026 (optional)'**
  String get portfolioAccountHint;

  /// Small button in the buy/sell dialog that reveals the optional account field.
  ///
  /// In en, this message translates to:
  /// **'Specify an account'**
  String get portfolioAccountAdd;

  /// First chip of the account filter on the portfolio page: show every account together.
  ///
  /// In en, this message translates to:
  /// **'All accounts'**
  String get portfolioAccountsAll;

  /// Note under the account filter when a single account is selected on the portfolio page.
  ///
  /// In en, this message translates to:
  /// **'Only this account\'s transactions and dividends. Cash, goals and the AI review are under All accounts.'**
  String get portfolioAccountNote;

  /// Label for transactions recorded without an account (e.g. on the account choice when selling shares held in several accounts).
  ///
  /// In en, this message translates to:
  /// **'No account'**
  String get portfolioNoAccount;

  /// Optional field in the buy/sell dialog: the broker's fee (commission) for this transaction, one amount in the stock's currency. It is added to the cost of a purchase and deducted from the proceeds of a sale.
  ///
  /// In en, this message translates to:
  /// **'Fee ({currency})'**
  String portfolioFee(String currency);

  /// Small button in the buy/sell dialog that reveals the optional fee (commission) field.
  ///
  /// In en, this message translates to:
  /// **'Add a fee'**
  String get portfolioFeeAdd;

  /// Under a transaction in the list: the fee (commission) paid on it.
  ///
  /// In en, this message translates to:
  /// **'Fee: {amount}'**
  String portfolioFeeRow(String amount);

  /// Portfolio menu item and sheet title: per year, per account and currency, the realized gains, sales proceeds, cost basis, dividends received and fees paid – for the tax return.
  ///
  /// In en, this message translates to:
  /// **'Annual summary'**
  String get portfolioAnnualSummary;

  /// Row in the annual summary: total proceeds of the sales in that year (net of the sale fees).
  ///
  /// In en, this message translates to:
  /// **'Sales proceeds'**
  String get portfolioProceeds;

  /// Row in the annual summary: the FIFO purchase cost of the shares sold in that year (including purchase fees).
  ///
  /// In en, this message translates to:
  /// **'Cost basis'**
  String get portfolioCostBasis;

  /// Row in the annual summary: broker fees (commissions) paid on purchases and sales in that year.
  ///
  /// In en, this message translates to:
  /// **'Fees paid'**
  String get portfolioFeesPaid;

  /// Note at the bottom of the annual summary sheet.
  ///
  /// In en, this message translates to:
  /// **'Amounts in the original currency, not converted. Proceeds are net of the sale fee; the cost basis includes the purchase fee (FIFO). For your tax return, convert at the exchange rate your tax authority requires.'**
  String get portfolioAnnualSummaryNote;

  /// Button and sheet title: share the portfolio performance as an image or text (percentages only, no amounts).
  ///
  /// In en, this message translates to:
  /// **'Share performance'**
  String get portfolioShare;

  /// Heading on the shared portfolio performance image.
  ///
  /// In en, this message translates to:
  /// **'My portfolio'**
  String get portfolioShareHeading;

  /// Label above the largest positions and their weights on the shared portfolio image.
  ///
  /// In en, this message translates to:
  /// **'Largest positions'**
  String get portfolioTopHoldings;

  /// Note under the preview of the portfolio performance image.
  ///
  /// In en, this message translates to:
  /// **'Only percentages are shared, no amounts.'**
  String get portfolioShareNote;

  /// Number of positions in the portfolio, on the shared image.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 position} other{{count} positions}}'**
  String portfolioPositionsCount(int count);

  /// Small print at the bottom of a shared image.
  ///
  /// In en, this message translates to:
  /// **'Not investment advice'**
  String get shareNotAdvice;

  /// Button under the target weights (rebalancing) and dialog title: split an amount of new money between the positions, buying only, towards their target weights.
  ///
  /// In en, this message translates to:
  /// **'Invest new money'**
  String get contributionButton;

  /// Field label in the "invest new money" dialog.
  ///
  /// In en, this message translates to:
  /// **'Amount to invest ({currency})'**
  String contributionAmount(String currency);

  /// Explanation at the top of the "invest new money" dialog.
  ///
  /// In en, this message translates to:
  /// **'Buys only, no sales: the positions furthest below their target get the money first.'**
  String get contributionHint;

  /// About how many shares the suggested amount buys at today's price.
  ///
  /// In en, this message translates to:
  /// **'≈ {shares} shares'**
  String contributionShares(String shares);

  /// Warning in the "invest new money" dialog: positions with a target but no current price are not included.
  ///
  /// In en, this message translates to:
  /// **'No price right now for {symbols}: left out of the split.'**
  String contributionMissing(String symbols);

  /// Small note under the portfolio goal bar: when the goal would be reached at today's money-weighted annual return, compounding, without new money. {year} is a year number like 2031.
  ///
  /// In en, this message translates to:
  /// **'If the annual return holds ({rate}), you\'d reach it around {year}.'**
  String portfolioGoalEta(String rate, String year);

  /// Figure on the portfolio history card: the biggest fall from a high to a later low (maximum drawdown), as a percentage, with the two dates.
  ///
  /// In en, this message translates to:
  /// **'Largest drop'**
  String get portfolioMaxDrawdown;

  /// Explanation (ⓘ) of the largest drop (maximum drawdown) on the portfolio history card.
  ///
  /// In en, this message translates to:
  /// **'The biggest fall of your holdings from an earlier high to a later low, without the effect of your buying and selling (time-weighted). It shows how deep a dip your portfolio has already been through.'**
  String get glossMaxDrawdown;

  /// Tooltip on the small percentage under a favorite's price: the price change since the day it was added to the favorites.
  ///
  /// In en, this message translates to:
  /// **'Since you added it ({date})'**
  String watchSince(String date);

  /// Button on the empty portfolio page: loads a few sample purchases, a sale and dividends to try the features; it can be removed with one tap.
  ///
  /// In en, this message translates to:
  /// **'Try with a sample portfolio'**
  String get portfolioSampleTry;

  /// Banner on the portfolio page while the sample portfolio is loaded.
  ///
  /// In en, this message translates to:
  /// **'This is a sample portfolio. Add your own purchases next to it, or remove it.'**
  String get portfolioSampleBanner;

  /// Button in the sample portfolio banner: removes the sample transactions and dividends (your own stay).
  ///
  /// In en, this message translates to:
  /// **'Remove sample'**
  String get portfolioSampleRemove;

  /// Portfolio menu item and dialog title: set a "drop from peak" price alert on every position at once.
  ///
  /// In en, this message translates to:
  /// **'Trailing stop for all positions'**
  String get portfolioStopsAll;

  /// Message after setting trailing stops for all positions: how many new alerts were created.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{Every position already has a trailing stop} =1{1 trailing stop set} other{{count} trailing stops set}}'**
  String portfolioStopsDone(int count);

  /// On a fully sold position: how much the price has moved since the last sale, e.g. "+23.0% since you sold".
  ///
  /// In en, this message translates to:
  /// **'{percent} since you sold'**
  String portfolioSinceSale(String percent);

  /// Sell dialog preview: label before the expected realized gain or loss of this sale (matched first in, first out, after the fee), e.g. "Realized on this sale (FIFO): +198.00 USD".
  ///
  /// In en, this message translates to:
  /// **'Realized on this sale (FIFO):'**
  String get lotPreviewRealized;

  /// Buy dialog preview: the average cost per share after this purchase and the current one, e.g. "New average cost: 150.00 USD (now 100.00 USD)".
  ///
  /// In en, this message translates to:
  /// **'New average cost: {after} (now {before})'**
  String lotPreviewAverage(String after, String before);

  /// Portfolio value history card: label of the time-weighted return since January 1 (deposits and withdrawals excluded).
  ///
  /// In en, this message translates to:
  /// **'Return this year'**
  String get portfolioYtdReturn;

  /// Info text for the portfolio's time-weighted return this year (also in the glossary).
  ///
  /// In en, this message translates to:
  /// **'Time-weighted return since the start of the year (or since your first purchase, if that was this year): each day counts the change of the stocks you held that day, and the days are chained together – money you put in or take out is not return, so it can be compared with an index. Below it: the chosen index over the same period.'**
  String get glossTwrYtd;

  /// Under an active price alert: the current price and how much the price still has to move (signed percent) until the alert fires, e.g. "Now 231.45 USD · +4.2% to go".
  ///
  /// In en, this message translates to:
  /// **'Now {price} · {percent} to go'**
  String alertDistance(String price, String percent);

  /// Favorites sort option: by the price change since the stock was added to the favorites, largest gain first.
  ///
  /// In en, this message translates to:
  /// **'By change since added'**
  String get watchSortSince;

  /// Portfolio total card: label before the two positions that changed the portfolio value most today, e.g. "Moved most today: NVDA +82.00 USD · OTP −11.00 USD".
  ///
  /// In en, this message translates to:
  /// **'Moved most today:'**
  String get portfolioTodayMovers;

  /// Buy/sell dialog: button and field label for an optional note on the transaction (it is appended to the stock's own notes).
  ///
  /// In en, this message translates to:
  /// **'Add a note'**
  String get lotNoteAdd;

  /// Hint in the optional note field of the buy dialog.
  ///
  /// In en, this message translates to:
  /// **'Why are you buying? It goes into the stock\'s notes, with the date.'**
  String get lotNoteBuyHint;

  /// Hint in the optional note field of the sell dialog.
  ///
  /// In en, this message translates to:
  /// **'Why are you selling? It goes into the stock\'s notes, with the date.'**
  String get lotNoteSellHint;

  /// Word at the start of a note entry written from the buy dialog, e.g. "Oct 23, 2026 · Bought 10 × 172.50 USD: …" (the sell entry uses "Sold").
  ///
  /// In en, this message translates to:
  /// **'Bought'**
  String get lotNoteBought;

  /// My position card: label of how long the oldest shares still held have been owned, e.g. "Held for 1 year 7 months".
  ///
  /// In en, this message translates to:
  /// **'Held for'**
  String get positionHeld;

  /// A number of months as part of a duration, e.g. "7 months" (after a number of years, or alone).
  ///
  /// In en, this message translates to:
  /// **'{months, plural, one{1 month} other{{months} months}}'**
  String durationMonths(int months);

  /// A number of days as a duration, e.g. "12 days".
  ///
  /// In en, this message translates to:
  /// **'{days, plural, one{1 day} other{{days} days}}'**
  String durationDays(int days);

  /// Under the holding period: the date of the oldest purchase still held, e.g. "since Mar 4, 2024".
  ///
  /// In en, this message translates to:
  /// **'since {date}'**
  String positionHeldSince(String date);

  /// Buy/sell dialog preview: the stock's share of the whole portfolio value after this transaction and now (both percentages), e.g. "Share of the portfolio afterwards: 27.4% (now 18.2%)".
  ///
  /// In en, this message translates to:
  /// **'Share of the portfolio afterwards: {after} (now {before})'**
  String lotPreviewWeight(String after, String before);

  /// Buy dialog checkbox: take the cost (with the fee) from the cash balance kept in the app for this currency; {amount} is the balance now.
  ///
  /// In en, this message translates to:
  /// **'Pay from cash (now {amount})'**
  String lotFromCash(String amount);

  /// Sell dialog checkbox: add the proceeds (after the fee) to the cash balance kept in the app for this currency; {amount} is the balance now.
  ///
  /// In en, this message translates to:
  /// **'Add to cash (now {amount})'**
  String lotToCash(String amount);

  /// Onboarding slide 3 of 4 (between the AI analysis slide and the alerts slide): title about portfolio tracking.
  ///
  /// In en, this message translates to:
  /// **'Track your portfolio'**
  String get onboardTitle4;

  /// Onboarding slide about portfolio tracking. Keep the broker names as they are.
  ///
  /// In en, this message translates to:
  /// **'Import your broker\'s export (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) or add trades by hand: see your return next to an index, your dividends and an annual summary for your tax return.'**
  String get onboardBody4;

  /// Tooltip of the edit button next to a recorded transaction (buy or sell) on the transactions sheet.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get lotEdit;

  /// Title of the dialog that edits a recorded transaction, e.g. "Edit transaction · AAPL".
  ///
  /// In en, this message translates to:
  /// **'Edit transaction · {symbol}'**
  String lotEditTitle(String symbol);

  /// Button that saves the edited transaction.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get lotSave;

  /// Title of the dialog that edits a recorded received dividend, e.g. "Edit dividend · KO".
  ///
  /// In en, this message translates to:
  /// **'Edit dividend · {symbol}'**
  String dividendEditTitle(String symbol);

  /// Title of the page (and portfolio menu item) that lists every recorded buy, sell, dividend and stock split in one chronological list.
  ///
  /// In en, this message translates to:
  /// **'All transactions'**
  String get activityTitle;

  /// Hint in the search field on the all-transactions page; typing part of a ticker (e.g. AAPL) narrows the list.
  ///
  /// In en, this message translates to:
  /// **'Filter by ticker'**
  String get activitySearchHint;

  /// Shown on the all-transactions page when the ticker, type or account filter leaves nothing to show.
  ///
  /// In en, this message translates to:
  /// **'No transactions match the filter.'**
  String get activityNoMatch;

  /// After importing a broker export: how many rows were left out because the same transaction or dividend is already in the portfolio (e.g. when a newer export with the old rows is imported again). Shown after "5 transactions added · ".
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 already recorded, left out} other{{count} already recorded, left out}}'**
  String portfolioImportDuplicates(int count);

  /// Tooltip of the button on a position's transactions sheet that moves everything to a new ticker after a company changes its stock symbol (e.g. FB → META).
  ///
  /// In en, this message translates to:
  /// **'Ticker change'**
  String get tickerChange;

  /// Title of the ticker change dialog, e.g. "Ticker change · FB".
  ///
  /// In en, this message translates to:
  /// **'Ticker change · {symbol}'**
  String tickerChangeTitle(String symbol);

  /// Label of the field in the ticker change dialog where the user types the company's new stock symbol.
  ///
  /// In en, this message translates to:
  /// **'New ticker'**
  String get tickerChangeNew;

  /// Explanation in the ticker change dialog. Keep the example tickers FB and META unchanged.
  ///
  /// In en, this message translates to:
  /// **'When a company changes its ticker (e.g. FB → META): all transactions, dividends, stock splits, the note and the alerts move to the new one.'**
  String get tickerChangeHint;

  /// Confirmation after a ticker change, e.g. "Moved to META".
  ///
  /// In en, this message translates to:
  /// **'Moved to {symbol}'**
  String tickerChanged(String symbol);

  /// Error when redeeming a friend's referral code without being signed in with an email address.
  ///
  /// In en, this message translates to:
  /// **'Sign in with your email to redeem a friend\'s code.'**
  String get referralErrSignIn;

  /// Error when a referral (or tester) code has reached its maximum number of redemptions.
  ///
  /// In en, this message translates to:
  /// **'This code has already been used as many times as it can be.'**
  String get referralErrFull;

  /// Body of the desktop notification sent once when the portfolio's total value reaches the goal the user set; the title is "Goal of {amount} reached".
  ///
  /// In en, this message translates to:
  /// **'Your portfolio is now worth {value}.'**
  String portfolioGoalReachedBody(String value);

  /// Error when the AI analysis reply hit the length limit and was incomplete; the user was not charged.
  ///
  /// In en, this message translates to:
  /// **'The analysis was cut off before it was finished. Please try again – it did not use your allowance.'**
  String get errAiTruncated;

  /// No description provided for @portfolioGoalSet.
  ///
  /// In en, this message translates to:
  /// **'Set a goal'**
  String get portfolioGoalSet;

  /// No description provided for @portfolioGoalTitle.
  ///
  /// In en, this message translates to:
  /// **'Portfolio goal'**
  String get portfolioGoalTitle;

  /// Under the portfolio total: progress towards the user's target value. {percent} like '53%', {amount} like '10,000,000 HUF'.
  ///
  /// In en, this message translates to:
  /// **'{percent} of your {amount} goal'**
  String portfolioGoalProgress(String percent, String amount);

  /// No description provided for @portfolioGoalReached.
  ///
  /// In en, this message translates to:
  /// **'Goal of {amount} reached'**
  String portfolioGoalReached(String amount);

  /// No description provided for @portfolioGoalRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove goal'**
  String get portfolioGoalRemove;

  /// No description provided for @alertEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit alert'**
  String get alertEdit;

  /// Transactions sheet of a position: heading of the list of purchase lots still held after FIFO sales, each with quantity, buy price, date and gain at today's price.
  ///
  /// In en, this message translates to:
  /// **'Still held (oldest first)'**
  String get positionOpenLots;

  /// No description provided for @lotRemoved.
  ///
  /// In en, this message translates to:
  /// **'Transaction deleted'**
  String get lotRemoved;

  /// No description provided for @alertDeleted.
  ///
  /// In en, this message translates to:
  /// **'Alert deleted'**
  String get alertDeleted;

  /// No description provided for @alertsClearTriggered.
  ///
  /// In en, this message translates to:
  /// **'Clear triggered alerts'**
  String get alertsClearTriggered;

  /// Snackbar after removing all triggered alerts (with Undo).
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 alert cleared} other{{count} alerts cleared}}'**
  String alertsCleared(int count);

  /// Settings section title: switches to show or hide the parts of the home screen (Markets today, Favorites, News…).
  ///
  /// In en, this message translates to:
  /// **'Home screen'**
  String get homeScreenTitle;

  /// Portfolio allocation tab: weights grouped by the companies' home country. Next to 'Positions', 'Sectors', 'Currencies'.
  ///
  /// In en, this message translates to:
  /// **'Countries'**
  String get allocationCountries;

  /// Small note under the AI news explanation (the 'What does this mean?' sheet), which now researches the web and rates the source.
  ///
  /// In en, this message translates to:
  /// **'An AI explanation: it looks the facts up on the web, opens the article and judges how reliable the source is. It is not investment advice. Uses your daily question allowance, not an analysis.'**
  String get newsExplainNoteResearch;

  /// Tiny tag next to a source link: an exchange/regulator filing or the company's investor-relations site.
  ///
  /// In en, this message translates to:
  /// **'Official'**
  String get sourceOfficial;

  /// Tiny tag next to a source link: the company's own press release (PR Newswire, Business Wire…).
  ///
  /// In en, this message translates to:
  /// **'Press release'**
  String get sourcePressRelease;

  /// Tiny tag next to a source link: a major news agency or leading business paper (Reuters, Bloomberg, FT…).
  ///
  /// In en, this message translates to:
  /// **'Major outlet'**
  String get sourceMajorNews;

  /// Tiny tag next to a source link: opinion, analyst blog or stock-tip site (Motley Fool, Seeking Alpha…).
  ///
  /// In en, this message translates to:
  /// **'Opinion'**
  String get sourceOpinion;

  /// Button on the earnings card of a stock (and the title of the sheet it opens): asks the AI to summarize the most recent quarterly results.
  ///
  /// In en, this message translates to:
  /// **'What was in the latest report?'**
  String get earningsSummaryButton;

  /// Small note under the AI summary of the latest quarterly results.
  ///
  /// In en, this message translates to:
  /// **'AI summary of the company\'s results announcement and the press coverage it finds on the web. Not investment advice. Uses your daily question allowance, not an analysis.'**
  String get earningsSummaryNote;

  /// Row label in the stock comparison table: by how many % the last quarter's earnings per share beat (+) or missed (-) analysts' expectations.
  ///
  /// In en, this message translates to:
  /// **'Last quarter EPS vs. expected'**
  String get compareLastSurprise;

  /// Row label in the stock comparison table: the date of the company's next quarterly results.
  ///
  /// In en, this message translates to:
  /// **'Next report'**
  String get compareNextReport;

  /// Progress text on the home screen while the AI works out which stock or ETF a typed description (e.g. "tech 100 etf") refers to.
  ///
  /// In en, this message translates to:
  /// **'Working out which stock you mean…'**
  String get resolvingDescription;

  /// Title of the card on a stock page shown when the ticker has no company profile (an ETF, a fund, an ADR…).
  ///
  /// In en, this message translates to:
  /// **'About this instrument'**
  String get instrumentTitle;

  /// Explanation text on the 'About this instrument' card, above the button.
  ///
  /// In en, this message translates to:
  /// **'There is no company profile for this symbol – it may be an ETF, a fund or a depositary receipt. Ask the AI what it is, what it holds and what it costs.'**
  String get instrumentHint;

  /// Button on the 'About this instrument' card (and the title of the sheet it opens): asks the AI to explain the ETF/fund.
  ///
  /// In en, this message translates to:
  /// **'What is this?'**
  String get instrumentAsk;

  /// Small note under the AI explanation of an ETF/fund.
  ///
  /// In en, this message translates to:
  /// **'AI explanation from the issuer\'s fund page and financial sites found on the web. Not investment advice. Uses your daily question allowance, not an analysis.'**
  String get instrumentNote;

  /// Suggestion row under the search field when the typed text looks like a description (e.g. "tech 100 etf") and the market search finds nothing: tapping it asks the AI which stock or ETF is meant.
  ///
  /// In en, this message translates to:
  /// **'Ask the AI: “{query}”'**
  String suggestAskAi(String query);

  /// Note on the portfolio card and page naming the positions that have no current price (e.g. a non-US stock the data provider does not cover), so the total leaves them out. {symbols} is a comma-separated list of tickers.
  ///
  /// In en, this message translates to:
  /// **'No current price for {symbols}.'**
  String portfolioNoPriceFor(String symbols);

  /// Section title on the events page: the quarterly results your favorite/portfolio companies published recently (EPS vs. expected), each with a link to the AI summary.
  ///
  /// In en, this message translates to:
  /// **'Recently reported'**
  String get eventsRecentResults;

  /// Button under an AI research note (news explanation, results summary, fund description): appends the note to the user's own notes on that stock.
  ///
  /// In en, this message translates to:
  /// **'Save to my notes'**
  String get saveToNotes;

  /// The same button after saving (disabled, with a check mark).
  ///
  /// In en, this message translates to:
  /// **'Saved to your notes'**
  String get savedToNotes;

  /// Card title on the portfolio page and a figure on the stock page: cash dividends the user actually received.
  ///
  /// In en, this message translates to:
  /// **'Dividends received'**
  String get portfolioDividendsReceived;

  /// Label of the dividends received in the current calendar year.
  ///
  /// In en, this message translates to:
  /// **'This year'**
  String get portfolioDividendsThisYear;

  /// Label of all dividends received so far.
  ///
  /// In en, this message translates to:
  /// **'All time'**
  String get portfolioDividendsAllTime;

  /// Button and dialog title for recording a dividend payment by hand.
  ///
  /// In en, this message translates to:
  /// **'Add dividend'**
  String get portfolioAddDividend;

  /// Field label in the add-dividend dialog: the total cash received, after tax.
  ///
  /// In en, this message translates to:
  /// **'Amount received ({currency})'**
  String portfolioDividendAmount(String currency);

  /// Date row in the add-dividend dialog.
  ///
  /// In en, this message translates to:
  /// **'Payment date'**
  String get portfolioDividendDate;

  /// Empty state of the dividends card.
  ///
  /// In en, this message translates to:
  /// **'No dividends recorded yet. Add them by hand, or import your broker\'s export – its dividend rows are picked up too.'**
  String get portfolioDividendsEmpty;

  /// Button in a position's transactions sheet: record a stock split (e.g. 10-for-1).
  ///
  /// In en, this message translates to:
  /// **'Stock split'**
  String get portfolioSplit;

  /// Title of the dialog that records a stock split for one stock.
  ///
  /// In en, this message translates to:
  /// **'Stock split: {symbol}'**
  String portfolioSplitTitle(String symbol);

  /// Explanation in the stock-split dialog.
  ///
  /// In en, this message translates to:
  /// **'Purchases and sales dated before the split are adjusted: the number of shares is multiplied and the price per share divided, so the cost stays the same.'**
  String get portfolioSplitHint;

  /// Field label in the stock-split dialog; the user types e.g. 10:1 (ten new shares for one old) or 1:10 for a reverse split.
  ///
  /// In en, this message translates to:
  /// **'Ratio (new : old)'**
  String get portfolioSplitRatio;

  /// Validation error under the ratio field in the stock-split dialog.
  ///
  /// In en, this message translates to:
  /// **'Enter a ratio like 10:1, or 1:10 for a reverse split.'**
  String get portfolioSplitRatioError;

  /// Date row in the stock-split dialog.
  ///
  /// In en, this message translates to:
  /// **'Date of the split'**
  String get portfolioSplitDate;

  /// A recorded stock split in the transactions sheet; {ratio} is like 10:1.
  ///
  /// In en, this message translates to:
  /// **'Stock split {ratio}'**
  String portfolioSplitRow(String ratio);

  /// Shown in the transactions sheet after deleting a recorded stock split, next to an Undo button.
  ///
  /// In en, this message translates to:
  /// **'Stock split deleted'**
  String get portfolioSplitRemoved;

  /// After importing the app's own CSV export: how many stock splits were added.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 stock split added} other{{count} stock splits added}}'**
  String portfolioSplitsImported(int count);

  /// After importing a broker export: how many dividend payments were added.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 dividend added} other{{count} dividends added}}'**
  String portfolioDividendsImported(int count);

  /// Menu item: share the received dividends as a CSV file.
  ///
  /// In en, this message translates to:
  /// **'Export dividends (CSV)'**
  String get portfolioExportDividends;

  /// Snackbar after deleting a dividend record; an Undo button follows.
  ///
  /// In en, this message translates to:
  /// **'Dividend deleted'**
  String get portfolioDividendDeleted;

  /// Small print under the dividends card.
  ///
  /// In en, this message translates to:
  /// **'Amounts as they arrived on your account, in the payout currency; totals are converted at today\'s rate. For your tax return, use your broker\'s statement.'**
  String get portfolioDividendsHint;

  /// Card title on the home screen, shown when the app is opened after at least 20 hours: what happened to the user's stocks since their last visit. Also the name of this section in Settings.
  ///
  /// In en, this message translates to:
  /// **'While you were away'**
  String get awayTitle;

  /// Subtitle of that card: the date and time of the last visit.
  ///
  /// In en, this message translates to:
  /// **'Since {when}'**
  String awaySince(String when);

  /// Shown when none of the user's stocks moved more than 1% since the last visit.
  ///
  /// In en, this message translates to:
  /// **'Nothing moved much.'**
  String get awayQuiet;

  /// Line on the card: how many price alerts went off since the last visit.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 alert triggered} other{{count} alerts triggered}}'**
  String awayAlerts(int count);

  /// Line on the card: which of the user's companies published quarterly results since the last visit.
  ///
  /// In en, this message translates to:
  /// **'Reported results: {symbols}'**
  String awayReported(String symbols);

  /// Small button under the day's change on a stock page, shown when the stock moved at least 2.5% today: asks the AI to explain the move from today's news.
  ///
  /// In en, this message translates to:
  /// **'Why is it moving today?'**
  String get moveWhyButton;

  /// Title of the explanation sheet; the placeholder is the day's change, e.g. +4.2%.
  ///
  /// In en, this message translates to:
  /// **'{percent} today'**
  String moveWhyTitle(String percent);

  /// Small print under the explanation.
  ///
  /// In en, this message translates to:
  /// **'AI explanation from today\'s news found on the web; the real reason may be unknown or different. Not investment advice. Uses your daily question allowance, not an analysis.'**
  String get moveWhyNote;

  /// Card title on the stock page: moving averages, RSI and volatility computed from daily closing prices.
  ///
  /// In en, this message translates to:
  /// **'Technical picture'**
  String get sectionTechnical;

  /// Row label: the simple moving average of the last 50 daily closes.
  ///
  /// In en, this message translates to:
  /// **'50-day average'**
  String get labelSma50;

  /// Row label: the simple moving average of the last 200 daily closes.
  ///
  /// In en, this message translates to:
  /// **'200-day average'**
  String get labelSma200;

  /// Row label: the 14-day relative strength index (0–100).
  ///
  /// In en, this message translates to:
  /// **'RSI (14 days)'**
  String get labelRsi;

  /// Row label: annualised volatility of the last 30 trading days' returns.
  ///
  /// In en, this message translates to:
  /// **'Volatility (30 days)'**
  String get labelVolatility30;

  /// Sub-text next to a moving average: the current price is this much above it, e.g. '4.2% above'.
  ///
  /// In en, this message translates to:
  /// **'{percent} above'**
  String techAbove(String percent);

  /// Sub-text next to a moving average: the current price is this much below it, e.g. '4.2% below'.
  ///
  /// In en, this message translates to:
  /// **'{percent} below'**
  String techBelow(String percent);

  /// RSI state when above 70.
  ///
  /// In en, this message translates to:
  /// **'overbought'**
  String get techOverbought;

  /// RSI state when below 30.
  ///
  /// In en, this message translates to:
  /// **'oversold'**
  String get techOversold;

  /// RSI state between 30 and 70.
  ///
  /// In en, this message translates to:
  /// **'neutral'**
  String get techNeutral;

  /// One-line note under the rows.
  ///
  /// In en, this message translates to:
  /// **'The 50-day average is above the 200-day average – an uptrend by the classic reading.'**
  String get techGoldenCross;

  /// One-line note under the rows.
  ///
  /// In en, this message translates to:
  /// **'The 50-day average is below the 200-day average – a downtrend by the classic reading.'**
  String get techDeathCross;

  /// Glossary explanation shown when tapping ⓘ next to the label; plain language for beginners.
  ///
  /// In en, this message translates to:
  /// **'The average closing price of the last 50 trading days. Price above it is often read as short-term strength, below it as weakness.'**
  String get glossSma50;

  /// Glossary explanation for beginners.
  ///
  /// In en, this message translates to:
  /// **'The average closing price of the last 200 trading days – the classic long-term trend line. Many investors treat a price above it as a long-term uptrend.'**
  String get glossSma200;

  /// Glossary explanation for beginners.
  ///
  /// In en, this message translates to:
  /// **'Relative strength index: compares recent gains with recent losses on a 0–100 scale. Above 70 the stock is often called overbought (it rose fast), below 30 oversold – but a strong trend can stay there for a long time.'**
  String get glossRsi;

  /// Glossary explanation for beginners.
  ///
  /// In en, this message translates to:
  /// **'How much the price swings day to day, scaled to a year: 20% means a typical year moves within roughly ±20%. Higher volatility means bigger moves both ways.'**
  String get glossVolatility;

  /// Small print under the technical card.
  ///
  /// In en, this message translates to:
  /// **'Computed from daily closing prices. Technical signals describe the past, not the future.'**
  String get techNote;

  /// Line under the portfolio value chart: how many open positions trade above their own 200-day moving average.
  ///
  /// In en, this message translates to:
  /// **'{above} of {count} positions above their 200-day average'**
  String portfolioAbove200(int above, int count);

  /// Small heading above a row of chips on the favorites (watchlist) page: technical signals computed from daily closes.
  ///
  /// In en, this message translates to:
  /// **'Signals'**
  String get watchSignalsTitle;

  /// Chip text after the ticker: the 14-day RSI is below 30. {value} is a whole number, e.g. 27.
  ///
  /// In en, this message translates to:
  /// **'RSI {value} · oversold'**
  String signalRsiOversold(String value);

  /// Chip text after the ticker: the 14-day RSI is above 70. {value} is a whole number, e.g. 74.
  ///
  /// In en, this message translates to:
  /// **'RSI {value} · overbought'**
  String signalRsiOverbought(String value);

  /// Chip text after the ticker: today's close moved above the 200-day moving average (it was below yesterday).
  ///
  /// In en, this message translates to:
  /// **'crossed above its 200-day average'**
  String get signalCrossedAbove;

  /// Chip text after the ticker: today's close moved below the 200-day moving average (it was above yesterday).
  ///
  /// In en, this message translates to:
  /// **'crossed below its 200-day average'**
  String get signalCrossedBelow;

  /// Settings switch title: a desktop notification about technical signals on the user's favorites and portfolio stocks.
  ///
  /// In en, this message translates to:
  /// **'Technical signal notifications'**
  String get signalAlertsTitle;

  /// Settings switch subtitle explaining when the notification is sent.
  ///
  /// In en, this message translates to:
  /// **'Once a day, when a stock you follow turns oversold or overbought (RSI), or its price crosses its 200-day average.'**
  String get signalAlertsSubtitle;

  /// Title of that system notification; the body lists the stocks with their signals.
  ///
  /// In en, this message translates to:
  /// **'Technical signals'**
  String get signalAlertsNotification;

  /// Title of a page (opened from Settings) that lists every financial figure the app shows with its plain-language explanation; also the Settings tile title.
  ///
  /// In en, this message translates to:
  /// **'Glossary'**
  String get glossaryPageTitle;

  /// Subtitle of the Settings tile that opens the glossary page.
  ///
  /// In en, this message translates to:
  /// **'Plain explanations of every figure the app shows, from P/E to RSI'**
  String get glossaryPageSubtitle;

  /// Hint text of the search field at the top of the glossary page.
  ///
  /// In en, this message translates to:
  /// **'Search the glossary'**
  String get glossarySearchHint;

  /// Label of the cash held at the broker: a row in the portfolio allocation chart and a figure on the portfolio summary.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get portfolioCash;

  /// Title of the dialog where the user enters the cash held at their broker, per currency.
  ///
  /// In en, this message translates to:
  /// **'Cash balance'**
  String get portfolioCashTitle;

  /// Explanation in the cash-balance dialog.
  ///
  /// In en, this message translates to:
  /// **'Uninvested money at your broker, by currency. It counts in the total value and the allocation; not in returns.'**
  String get portfolioCashHint;

  /// Field label in the cash-balance dialog; {currency} is a 3-letter code such as USD.
  ///
  /// In en, this message translates to:
  /// **'Amount ({currency})'**
  String portfolioCashAmount(String currency);

  /// Button that opens the cash-balance dialog (portfolio page menu).
  ///
  /// In en, this message translates to:
  /// **'Set cash balance'**
  String get portfolioCashEdit;

  /// Title of the small monthly bar chart in the Dividends received card: received dividends of the last 12 months and expected ones of the next 3.
  ///
  /// In en, this message translates to:
  /// **'By month'**
  String get portfolioDividendsByMonth;

  /// Legend of the monthly dividend chart: solid bars are dividends already received.
  ///
  /// In en, this message translates to:
  /// **'Received'**
  String get dividendsLegendReceived;

  /// Legend of the monthly dividend chart (and its tooltip): light bars are dividends expected from the rhythm of the recorded payments, an estimate.
  ///
  /// In en, this message translates to:
  /// **'Expected'**
  String get dividendsLegendExpected;

  /// Heading in the dividends card: the next dividend payment expected per stock, estimated from the recorded payments.
  ///
  /// In en, this message translates to:
  /// **'Expected next'**
  String get portfolioDividendsExpected;

  /// No description provided for @portfolioDividendsExpectedNote.
  ///
  /// In en, this message translates to:
  /// **'Estimated from the dates and amounts of the payments you recorded; companies can change or skip them.'**
  String get portfolioDividendsExpectedNote;

  /// When the next dividend is expected; {date} is a formatted date.
  ///
  /// In en, this message translates to:
  /// **'around {date}'**
  String portfolioDividendAround(String date);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return lookupAppLocalizations(locale);
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

Future<AppLocalizations> lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script+country codes are specified.
  switch (locale.toString()) {
    case 'zh_Hant_HK':
      return app_localizations_zh.loadLibrary().then(
        (dynamic _) => app_localizations_zh.AppLocalizationsZhHantHk(),
      );
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return app_localizations_af.loadLibrary().then(
        (dynamic _) => app_localizations_af.AppLocalizationsAf(),
      );
    case 'ak':
      return app_localizations_ak.loadLibrary().then(
        (dynamic _) => app_localizations_ak.AppLocalizationsAk(),
      );
    case 'am':
      return app_localizations_am.loadLibrary().then(
        (dynamic _) => app_localizations_am.AppLocalizationsAm(),
      );
    case 'ar':
      return app_localizations_ar.loadLibrary().then(
        (dynamic _) => app_localizations_ar.AppLocalizationsAr(),
      );
    case 'as':
      return app_localizations_as.loadLibrary().then(
        (dynamic _) => app_localizations_as.AppLocalizationsAs(),
      );
    case 'az':
      return app_localizations_az.loadLibrary().then(
        (dynamic _) => app_localizations_az.AppLocalizationsAz(),
      );
    case 'be':
      return app_localizations_be.loadLibrary().then(
        (dynamic _) => app_localizations_be.AppLocalizationsBe(),
      );
    case 'bg':
      return app_localizations_bg.loadLibrary().then(
        (dynamic _) => app_localizations_bg.AppLocalizationsBg(),
      );
    case 'bho':
      return app_localizations_bho.loadLibrary().then(
        (dynamic _) => app_localizations_bho.AppLocalizationsBho(),
      );
    case 'bm':
      return app_localizations_bm.loadLibrary().then(
        (dynamic _) => app_localizations_bm.AppLocalizationsBm(),
      );
    case 'bn':
      return app_localizations_bn.loadLibrary().then(
        (dynamic _) => app_localizations_bn.AppLocalizationsBn(),
      );
    case 'bo':
      return app_localizations_bo.loadLibrary().then(
        (dynamic _) => app_localizations_bo.AppLocalizationsBo(),
      );
    case 'bs':
      return app_localizations_bs.loadLibrary().then(
        (dynamic _) => app_localizations_bs.AppLocalizationsBs(),
      );
    case 'ca':
      return app_localizations_ca.loadLibrary().then(
        (dynamic _) => app_localizations_ca.AppLocalizationsCa(),
      );
    case 'ceb':
      return app_localizations_ceb.loadLibrary().then(
        (dynamic _) => app_localizations_ceb.AppLocalizationsCeb(),
      );
    case 'ckb':
      return app_localizations_ckb.loadLibrary().then(
        (dynamic _) => app_localizations_ckb.AppLocalizationsCkb(),
      );
    case 'cs':
      return app_localizations_cs.loadLibrary().then(
        (dynamic _) => app_localizations_cs.AppLocalizationsCs(),
      );
    case 'da':
      return app_localizations_da.loadLibrary().then(
        (dynamic _) => app_localizations_da.AppLocalizationsDa(),
      );
    case 'de':
      return app_localizations_de.loadLibrary().then(
        (dynamic _) => app_localizations_de.AppLocalizationsDe(),
      );
    case 'ee':
      return app_localizations_ee.loadLibrary().then(
        (dynamic _) => app_localizations_ee.AppLocalizationsEe(),
      );
    case 'el':
      return app_localizations_el.loadLibrary().then(
        (dynamic _) => app_localizations_el.AppLocalizationsEl(),
      );
    case 'en':
      return app_localizations_en.loadLibrary().then(
        (dynamic _) => app_localizations_en.AppLocalizationsEn(),
      );
    case 'es':
      return app_localizations_es.loadLibrary().then(
        (dynamic _) => app_localizations_es.AppLocalizationsEs(),
      );
    case 'fa':
      return app_localizations_fa.loadLibrary().then(
        (dynamic _) => app_localizations_fa.AppLocalizationsFa(),
      );
    case 'ff':
      return app_localizations_ff.loadLibrary().then(
        (dynamic _) => app_localizations_ff.AppLocalizationsFf(),
      );
    case 'fi':
      return app_localizations_fi.loadLibrary().then(
        (dynamic _) => app_localizations_fi.AppLocalizationsFi(),
      );
    case 'fil':
      return app_localizations_fil.loadLibrary().then(
        (dynamic _) => app_localizations_fil.AppLocalizationsFil(),
      );
    case 'fr':
      return app_localizations_fr.loadLibrary().then(
        (dynamic _) => app_localizations_fr.AppLocalizationsFr(),
      );
    case 'gl':
      return app_localizations_gl.loadLibrary().then(
        (dynamic _) => app_localizations_gl.AppLocalizationsGl(),
      );
    case 'gn':
      return app_localizations_gn.loadLibrary().then(
        (dynamic _) => app_localizations_gn.AppLocalizationsGn(),
      );
    case 'gu':
      return app_localizations_gu.loadLibrary().then(
        (dynamic _) => app_localizations_gu.AppLocalizationsGu(),
      );
    case 'ha':
      return app_localizations_ha.loadLibrary().then(
        (dynamic _) => app_localizations_ha.AppLocalizationsHa(),
      );
    case 'he':
      return app_localizations_he.loadLibrary().then(
        (dynamic _) => app_localizations_he.AppLocalizationsHe(),
      );
    case 'hi':
      return app_localizations_hi.loadLibrary().then(
        (dynamic _) => app_localizations_hi.AppLocalizationsHi(),
      );
    case 'hil':
      return app_localizations_hil.loadLibrary().then(
        (dynamic _) => app_localizations_hil.AppLocalizationsHil(),
      );
    case 'hr':
      return app_localizations_hr.loadLibrary().then(
        (dynamic _) => app_localizations_hr.AppLocalizationsHr(),
      );
    case 'ht':
      return app_localizations_ht.loadLibrary().then(
        (dynamic _) => app_localizations_ht.AppLocalizationsHt(),
      );
    case 'hu':
      return app_localizations_hu.loadLibrary().then(
        (dynamic _) => app_localizations_hu.AppLocalizationsHu(),
      );
    case 'hy':
      return app_localizations_hy.loadLibrary().then(
        (dynamic _) => app_localizations_hy.AppLocalizationsHy(),
      );
    case 'id':
      return app_localizations_id.loadLibrary().then(
        (dynamic _) => app_localizations_id.AppLocalizationsId(),
      );
    case 'ig':
      return app_localizations_ig.loadLibrary().then(
        (dynamic _) => app_localizations_ig.AppLocalizationsIg(),
      );
    case 'ilo':
      return app_localizations_ilo.loadLibrary().then(
        (dynamic _) => app_localizations_ilo.AppLocalizationsIlo(),
      );
    case 'it':
      return app_localizations_it.loadLibrary().then(
        (dynamic _) => app_localizations_it.AppLocalizationsIt(),
      );
    case 'ja':
      return app_localizations_ja.loadLibrary().then(
        (dynamic _) => app_localizations_ja.AppLocalizationsJa(),
      );
    case 'jv':
      return app_localizations_jv.loadLibrary().then(
        (dynamic _) => app_localizations_jv.AppLocalizationsJv(),
      );
    case 'ka':
      return app_localizations_ka.loadLibrary().then(
        (dynamic _) => app_localizations_ka.AppLocalizationsKa(),
      );
    case 'kab':
      return app_localizations_kab.loadLibrary().then(
        (dynamic _) => app_localizations_kab.AppLocalizationsKab(),
      );
    case 'kg':
      return app_localizations_kg.loadLibrary().then(
        (dynamic _) => app_localizations_kg.AppLocalizationsKg(),
      );
    case 'ki':
      return app_localizations_ki.loadLibrary().then(
        (dynamic _) => app_localizations_ki.AppLocalizationsKi(),
      );
    case 'kk':
      return app_localizations_kk.loadLibrary().then(
        (dynamic _) => app_localizations_kk.AppLocalizationsKk(),
      );
    case 'km':
      return app_localizations_km.loadLibrary().then(
        (dynamic _) => app_localizations_km.AppLocalizationsKm(),
      );
    case 'kn':
      return app_localizations_kn.loadLibrary().then(
        (dynamic _) => app_localizations_kn.AppLocalizationsKn(),
      );
    case 'ko':
      return app_localizations_ko.loadLibrary().then(
        (dynamic _) => app_localizations_ko.AppLocalizationsKo(),
      );
    case 'ku':
      return app_localizations_ku.loadLibrary().then(
        (dynamic _) => app_localizations_ku.AppLocalizationsKu(),
      );
    case 'ky':
      return app_localizations_ky.loadLibrary().then(
        (dynamic _) => app_localizations_ky.AppLocalizationsKy(),
      );
    case 'lg':
      return app_localizations_lg.loadLibrary().then(
        (dynamic _) => app_localizations_lg.AppLocalizationsLg(),
      );
    case 'ln':
      return app_localizations_ln.loadLibrary().then(
        (dynamic _) => app_localizations_ln.AppLocalizationsLn(),
      );
    case 'lo':
      return app_localizations_lo.loadLibrary().then(
        (dynamic _) => app_localizations_lo.AppLocalizationsLo(),
      );
    case 'lt':
      return app_localizations_lt.loadLibrary().then(
        (dynamic _) => app_localizations_lt.AppLocalizationsLt(),
      );
    case 'lua':
      return app_localizations_lua.loadLibrary().then(
        (dynamic _) => app_localizations_lua.AppLocalizationsLua(),
      );
    case 'lv':
      return app_localizations_lv.loadLibrary().then(
        (dynamic _) => app_localizations_lv.AppLocalizationsLv(),
      );
    case 'mai':
      return app_localizations_mai.loadLibrary().then(
        (dynamic _) => app_localizations_mai.AppLocalizationsMai(),
      );
    case 'mg':
      return app_localizations_mg.loadLibrary().then(
        (dynamic _) => app_localizations_mg.AppLocalizationsMg(),
      );
    case 'mk':
      return app_localizations_mk.loadLibrary().then(
        (dynamic _) => app_localizations_mk.AppLocalizationsMk(),
      );
    case 'ml':
      return app_localizations_ml.loadLibrary().then(
        (dynamic _) => app_localizations_ml.AppLocalizationsMl(),
      );
    case 'mn':
      return app_localizations_mn.loadLibrary().then(
        (dynamic _) => app_localizations_mn.AppLocalizationsMn(),
      );
    case 'mos':
      return app_localizations_mos.loadLibrary().then(
        (dynamic _) => app_localizations_mos.AppLocalizationsMos(),
      );
    case 'mr':
      return app_localizations_mr.loadLibrary().then(
        (dynamic _) => app_localizations_mr.AppLocalizationsMr(),
      );
    case 'ms':
      return app_localizations_ms.loadLibrary().then(
        (dynamic _) => app_localizations_ms.AppLocalizationsMs(),
      );
    case 'my':
      return app_localizations_my.loadLibrary().then(
        (dynamic _) => app_localizations_my.AppLocalizationsMy(),
      );
    case 'nb':
      return app_localizations_nb.loadLibrary().then(
        (dynamic _) => app_localizations_nb.AppLocalizationsNb(),
      );
    case 'ne':
      return app_localizations_ne.loadLibrary().then(
        (dynamic _) => app_localizations_ne.AppLocalizationsNe(),
      );
    case 'nl':
      return app_localizations_nl.loadLibrary().then(
        (dynamic _) => app_localizations_nl.AppLocalizationsNl(),
      );
    case 'nso':
      return app_localizations_nso.loadLibrary().then(
        (dynamic _) => app_localizations_nso.AppLocalizationsNso(),
      );
    case 'ny':
      return app_localizations_ny.loadLibrary().then(
        (dynamic _) => app_localizations_ny.AppLocalizationsNy(),
      );
    case 'om':
      return app_localizations_om.loadLibrary().then(
        (dynamic _) => app_localizations_om.AppLocalizationsOm(),
      );
    case 'or':
      return app_localizations_or.loadLibrary().then(
        (dynamic _) => app_localizations_or.AppLocalizationsOr(),
      );
    case 'pa':
      return app_localizations_pa.loadLibrary().then(
        (dynamic _) => app_localizations_pa.AppLocalizationsPa(),
      );
    case 'pcm':
      return app_localizations_pcm.loadLibrary().then(
        (dynamic _) => app_localizations_pcm.AppLocalizationsPcm(),
      );
    case 'pl':
      return app_localizations_pl.loadLibrary().then(
        (dynamic _) => app_localizations_pl.AppLocalizationsPl(),
      );
    case 'ps':
      return app_localizations_ps.loadLibrary().then(
        (dynamic _) => app_localizations_ps.AppLocalizationsPs(),
      );
    case 'pt':
      return app_localizations_pt.loadLibrary().then(
        (dynamic _) => app_localizations_pt.AppLocalizationsPt(),
      );
    case 'qu':
      return app_localizations_qu.loadLibrary().then(
        (dynamic _) => app_localizations_qu.AppLocalizationsQu(),
      );
    case 'rn':
      return app_localizations_rn.loadLibrary().then(
        (dynamic _) => app_localizations_rn.AppLocalizationsRn(),
      );
    case 'ro':
      return app_localizations_ro.loadLibrary().then(
        (dynamic _) => app_localizations_ro.AppLocalizationsRo(),
      );
    case 'ru':
      return app_localizations_ru.loadLibrary().then(
        (dynamic _) => app_localizations_ru.AppLocalizationsRu(),
      );
    case 'rw':
      return app_localizations_rw.loadLibrary().then(
        (dynamic _) => app_localizations_rw.AppLocalizationsRw(),
      );
    case 'sd':
      return app_localizations_sd.loadLibrary().then(
        (dynamic _) => app_localizations_sd.AppLocalizationsSd(),
      );
    case 'si':
      return app_localizations_si.loadLibrary().then(
        (dynamic _) => app_localizations_si.AppLocalizationsSi(),
      );
    case 'sk':
      return app_localizations_sk.loadLibrary().then(
        (dynamic _) => app_localizations_sk.AppLocalizationsSk(),
      );
    case 'sl':
      return app_localizations_sl.loadLibrary().then(
        (dynamic _) => app_localizations_sl.AppLocalizationsSl(),
      );
    case 'sn':
      return app_localizations_sn.loadLibrary().then(
        (dynamic _) => app_localizations_sn.AppLocalizationsSn(),
      );
    case 'so':
      return app_localizations_so.loadLibrary().then(
        (dynamic _) => app_localizations_so.AppLocalizationsSo(),
      );
    case 'sq':
      return app_localizations_sq.loadLibrary().then(
        (dynamic _) => app_localizations_sq.AppLocalizationsSq(),
      );
    case 'sr':
      return app_localizations_sr.loadLibrary().then(
        (dynamic _) => app_localizations_sr.AppLocalizationsSr(),
      );
    case 'st':
      return app_localizations_st.loadLibrary().then(
        (dynamic _) => app_localizations_st.AppLocalizationsSt(),
      );
    case 'su':
      return app_localizations_su.loadLibrary().then(
        (dynamic _) => app_localizations_su.AppLocalizationsSu(),
      );
    case 'sv':
      return app_localizations_sv.loadLibrary().then(
        (dynamic _) => app_localizations_sv.AppLocalizationsSv(),
      );
    case 'sw':
      return app_localizations_sw.loadLibrary().then(
        (dynamic _) => app_localizations_sw.AppLocalizationsSw(),
      );
    case 'ta':
      return app_localizations_ta.loadLibrary().then(
        (dynamic _) => app_localizations_ta.AppLocalizationsTa(),
      );
    case 'te':
      return app_localizations_te.loadLibrary().then(
        (dynamic _) => app_localizations_te.AppLocalizationsTe(),
      );
    case 'tg':
      return app_localizations_tg.loadLibrary().then(
        (dynamic _) => app_localizations_tg.AppLocalizationsTg(),
      );
    case 'th':
      return app_localizations_th.loadLibrary().then(
        (dynamic _) => app_localizations_th.AppLocalizationsTh(),
      );
    case 'ti':
      return app_localizations_ti.loadLibrary().then(
        (dynamic _) => app_localizations_ti.AppLocalizationsTi(),
      );
    case 'tk':
      return app_localizations_tk.loadLibrary().then(
        (dynamic _) => app_localizations_tk.AppLocalizationsTk(),
      );
    case 'tn':
      return app_localizations_tn.loadLibrary().then(
        (dynamic _) => app_localizations_tn.AppLocalizationsTn(),
      );
    case 'tr':
      return app_localizations_tr.loadLibrary().then(
        (dynamic _) => app_localizations_tr.AppLocalizationsTr(),
      );
    case 'ts':
      return app_localizations_ts.loadLibrary().then(
        (dynamic _) => app_localizations_ts.AppLocalizationsTs(),
      );
    case 'tt':
      return app_localizations_tt.loadLibrary().then(
        (dynamic _) => app_localizations_tt.AppLocalizationsTt(),
      );
    case 'ug':
      return app_localizations_ug.loadLibrary().then(
        (dynamic _) => app_localizations_ug.AppLocalizationsUg(),
      );
    case 'uk':
      return app_localizations_uk.loadLibrary().then(
        (dynamic _) => app_localizations_uk.AppLocalizationsUk(),
      );
    case 'ur':
      return app_localizations_ur.loadLibrary().then(
        (dynamic _) => app_localizations_ur.AppLocalizationsUr(),
      );
    case 'uz':
      return app_localizations_uz.loadLibrary().then(
        (dynamic _) => app_localizations_uz.AppLocalizationsUz(),
      );
    case 'vi':
      return app_localizations_vi.loadLibrary().then(
        (dynamic _) => app_localizations_vi.AppLocalizationsVi(),
      );
    case 'wo':
      return app_localizations_wo.loadLibrary().then(
        (dynamic _) => app_localizations_wo.AppLocalizationsWo(),
      );
    case 'xh':
      return app_localizations_xh.loadLibrary().then(
        (dynamic _) => app_localizations_xh.AppLocalizationsXh(),
      );
    case 'yo':
      return app_localizations_yo.loadLibrary().then(
        (dynamic _) => app_localizations_yo.AppLocalizationsYo(),
      );
    case 'zh':
      return app_localizations_zh.loadLibrary().then(
        (dynamic _) => app_localizations_zh.AppLocalizationsZh(),
      );
    case 'zu':
      return app_localizations_zu.loadLibrary().then(
        (dynamic _) => app_localizations_zu.AppLocalizationsZu(),
      );
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
