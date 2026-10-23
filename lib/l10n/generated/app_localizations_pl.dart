// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Sfotografuj akcję i dowiedz się o niej wszystkiego.';

  @override
  String get homeHint =>
      'Certyfikat akcji, ekran aplikacji maklerskiej, gazeta lub logo firmy – cokolwiek, co identyfikuje akcję.';

  @override
  String get takePhoto => 'Zrób zdjęcie';

  @override
  String get chooseFromGallery => 'Wybierz z galerii';

  @override
  String get chooseImage => 'Wybierz obraz';

  @override
  String get enterTickerManually => 'Wpisz ticker ręcznie';

  @override
  String get tickerInputLabel => 'Symbol giełdowy';

  @override
  String get tickerInputHint => 'np. AAPL';

  @override
  String get lookUp => 'Wyszukaj';

  @override
  String demoModeBanner(String symbols) {
    return 'Tryb demo – nie skonfigurowano klucza danych rynkowych. Przykładowe dane dostępne dla: $symbols.';
  }

  @override
  String get recognizing => 'Analizowanie obrazu…';

  @override
  String get loadingData => 'Wczytywanie danych…';

  @override
  String get noCandidatesTitle => 'Nie rozpoznano akcji';

  @override
  String get noCandidatesBody =>
      'Nie udało się zidentyfikować akcji na tym obrazie. Spróbuj ostrzejszego zdjęcia lub wpisz ticker ręcznie.';

  @override
  String get whatWeSaw => 'Co zobaczyliśmy';

  @override
  String get chooseCandidateTitle => 'Którą akcję masz na myśli?';

  @override
  String confidencePercent(int percent) {
    return 'Pewność $percent%';
  }

  @override
  String get settings => 'Ustawienia';

  @override
  String get language => 'Język';

  @override
  String get systemLanguage => 'Domyślny systemowy';

  @override
  String get about => 'O aplikacji';

  @override
  String get disclaimer =>
      'Ta aplikacja ma charakter wyłącznie informacyjny i nie stanowi porady inwestycyjnej. Dane mogą być opóźnione lub niedokładne.';

  @override
  String dataSource(String source) {
    return 'Źródło danych: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Rozpoznawanie: $source';
  }

  @override
  String get retry => 'Spróbuj ponownie';

  @override
  String get cancel => 'Anuluj';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Zamknij';

  @override
  String get errorGeneric => 'Coś poszło nie tak.';

  @override
  String get errorSectionUnavailable => 'Nie udało się wczytać tej sekcji.';

  @override
  String get notAvailable => 'b.d.';

  @override
  String get sectionIdentity => 'Identyfikacja';

  @override
  String get sectionPrice => 'Cena';

  @override
  String get sectionValuation => 'Wycena';

  @override
  String get sectionFinancials => 'Finanse';

  @override
  String get sectionDividend => 'Dywidenda';

  @override
  String get sectionProfile => 'Profil spółki';

  @override
  String get sectionAnalysts => 'Rekomendacje analityków';

  @override
  String get sectionNews => 'Wiadomości';

  @override
  String get sectionRecognition => 'Szczegóły rozpoznawania';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Giełda';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Waluta';

  @override
  String get labelCountry => 'Kraj';

  @override
  String get labelIndustry => 'Branża';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Strona internetowa';

  @override
  String get labelIpoDate => 'Data IPO';

  @override
  String get labelMarketCap => 'Kapitalizacja rynkowa';

  @override
  String get labelSharesOutstanding => 'Akcje w obrocie';

  @override
  String get labelEmployees => 'Pracownicy';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Siedziba';

  @override
  String get labelDescription => 'Opis';

  @override
  String get labelLastPrice => 'Ostatnia cena';

  @override
  String get labelChange => 'Zmiana';

  @override
  String get labelOpen => 'Otwarcie';

  @override
  String get labelDayHigh => 'Maksimum dnia';

  @override
  String get labelDayLow => 'Minimum dnia';

  @override
  String get labelPreviousClose => 'Poprzednie zamknięcie';

  @override
  String get labelWeek52High => 'Maksimum 52-tygodniowe';

  @override
  String get labelWeek52Low => 'Minimum 52-tygodniowe';

  @override
  String get labelAverageVolume10d => 'Śr. wolumen (10 dni)';

  @override
  String updatedAt(String time) {
    return 'Zaktualizowano $time';
  }

  @override
  String get labelPeTrailing => 'P/E (historyczny)';

  @override
  String get labelPeForward => 'P/E (prognozowany)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / wolne przepływy pieniężne';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Przychody (TTM)';

  @override
  String get labelNetIncomeTtm => 'Zysk netto (TTM)';

  @override
  String get labelGrossMargin => 'Marża brutto';

  @override
  String get labelOperatingMargin => 'Marża operacyjna';

  @override
  String get labelNetMargin => 'Marża netto';

  @override
  String get labelRoe => 'Rentowność kapitału własnego';

  @override
  String get labelRoa => 'Rentowność aktywów';

  @override
  String get labelDebtToEquity => 'Dług / kapitał własny';

  @override
  String get labelCurrentRatio => 'Wskaźnik płynności bieżącej';

  @override
  String get labelRevenueGrowth => 'Wzrost przychodów (YoY)';

  @override
  String get labelEpsGrowth => 'Wzrost EPS (YoY)';

  @override
  String get labelDividendYield => 'Stopa dywidendy';

  @override
  String get labelDividendPerShare => 'Dywidenda na akcję';

  @override
  String get labelPayoutRatio => 'Wskaźnik wypłaty';

  @override
  String get labelYieldOnCost => 'Stopa dywidendy od ceny zakupu';

  @override
  String get labelDividendGrowth5y => 'Wzrost dywidendy (5 lat)';

  @override
  String get dividendNone => 'Brak dywidendy w ostatnich 12 miesiącach.';

  @override
  String get dividendOnYourShares => 'Z twoich akcji, rocznie';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Zdecydowanie kupuj';

  @override
  String get ratingBuy => 'Kupuj';

  @override
  String get ratingHold => 'Trzymaj';

  @override
  String get ratingSell => 'Sprzedaj';

  @override
  String get ratingStrongSell => 'Zdecydowanie sprzedaj';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analityka',
      many: '$count analityków',
      few: '$count analitycy',
      one: '$count analityk',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Okres: $period';
  }

  @override
  String get noNews => 'Brak aktualnych wiadomości.';

  @override
  String get openArticle => 'Otwórz artykuł';

  @override
  String get openLinkFailed => 'Nie udało się otworzyć łącza.';

  @override
  String get recognitionSummary => 'Podsumowanie';

  @override
  String get recognitionEvidence => 'Dlaczego tak sądzimy';

  @override
  String get recognitionRawText => 'Tekst odczytany z obrazu';

  @override
  String get errMissingAnthropicKey =>
      'Rozpoznawanie obrazów nie jest skonfigurowane (brak ANTHROPIC_API_KEY). Wpisz ticker ręcznie.';

  @override
  String get errRecognitionUnreachable =>
      'Nie udało się połączyć z usługą rozpoznawania. Sprawdź połączenie z internetem.';

  @override
  String errRecognitionHttp(String status) {
    return 'Usługa rozpoznawania zwróciła błąd (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Usługa rozpoznawania nie mogła przetworzyć tego obrazu.';

  @override
  String get errRecognitionTruncated =>
      'Odpowiedź usługi rozpoznawania została ucięta. Spróbuj ponownie.';

  @override
  String get errRecognitionBadResponse =>
      'Nieoczekiwana odpowiedź usługi rozpoznawania.';

  @override
  String get errRecognitionEmpty =>
      'Usługa rozpoznawania zwróciła pustą odpowiedź.';

  @override
  String get errMissingFinnhubKey =>
      'Dane rynkowe nie są skonfigurowane (brak FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Nie udało się połączyć z usługą danych rynkowych. Sprawdź połączenie z internetem.';

  @override
  String get errMarketRateLimited =>
      'Zbyt wiele zapytań do usługi danych rynkowych. Odczekaj minutę.';

  @override
  String errMarketHttp(String status) {
    return 'Usługa danych rynkowych zwróciła błąd (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Nieoczekiwana odpowiedź usługi danych rynkowych.';

  @override
  String errNoQuote(String symbol) {
    return 'Nie znaleziono danych cenowych dla $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Nie znaleziono profilu spółki dla $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Tryb demo obsługuje tylko $symbols. Dodaj FINNHUB_API_KEY, aby uzyskać dane na żywo.';
  }

  @override
  String errUnknown(String detail) {
    return 'Coś poszło nie tak: $detail';
  }

  @override
  String get newSearch => 'Nowe wyszukiwanie';

  @override
  String get recentSearches => 'Ostatnie';

  @override
  String get noRecentSearches => 'Brak ostatnich wyszukiwań.';

  @override
  String get clearRecent => 'Wyczyść ostatnie';

  @override
  String get greeting => 'Którą akcję sprawdzimy?';

  @override
  String get searchHint => 'Ticker lub nazwa spółki';

  @override
  String get attachImage => 'Załącz obraz';

  @override
  String get searchResultsTitle => 'Wyniki wyszukiwania';

  @override
  String errNoResults(String query) {
    return 'Nie znaleziono akcji dla „$query”.';
  }

  @override
  String get quickBarHint => 'Wpisz ticker lub nazwę spółki…';

  @override
  String get openFullWindow => 'Otwórz okno';

  @override
  String hotkeyHint(String shortcut) {
    return 'Naciśnij $shortcut w dowolnym miejscu, aby przywołać WhatStock.';
  }

  @override
  String get trayOpen => 'Otwórz WhatStock';

  @override
  String get trayQuickSearch => 'Szybkie wyszukiwanie';

  @override
  String get trayQuit => 'Zakończ';

  @override
  String get appearance => 'Wygląd';

  @override
  String get themeSystem => 'Systemowy';

  @override
  String get themeDark => 'Ciemny';

  @override
  String get themeLight => 'Jasny';

  @override
  String get back => 'Wstecz';

  @override
  String get aiSectionTitle => 'Analiza AI';

  @override
  String get aiIntro =>
      'Szczegółowy przegląd napisany przez AI: podsumowanie ostatnich wiadomości, działalność, mocne strony, ryzyka i ukryte czynniki, wycena, prognoza kursu ze scenariuszami z punktu widzenia psychologicznego, socjologicznego, technicznego i makroekonomicznego oraz na co zwracać uwagę.';

  @override
  String get aiGenerate => 'Wygeneruj analizę';

  @override
  String get aiRegenerate => 'Wygeneruj ponownie';

  @override
  String get aiGenerating =>
      'Przygotowywanie analizy… może to potrwać minutę lub dwie.';

  @override
  String get aiSources => 'Źródła';

  @override
  String aiGeneratedAt(String time) {
    return 'Wygenerowano $time';
  }

  @override
  String get aiDisclaimer =>
      'Analiza wygenerowana przez AI na podstawie publicznych danych i ostatnich wiadomości. Może zawierać błędy lub być nieaktualna i nie stanowi porady inwestycyjnej.';

  @override
  String get errAiNotConfigured =>
      'Analiza AI nie jest skonfigurowana (brak ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Nie udało się połączyć z usługą AI. Sprawdź połączenie z internetem.';

  @override
  String errAiHttp(String status) {
    return 'Usługa AI zwróciła błąd (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Usługa AI odmówiła analizy tej akcji.';

  @override
  String get errAiBadResponse => 'Nieoczekiwana odpowiedź usługi AI.';

  @override
  String get sectionChart => 'Wykres ceny';

  @override
  String get rangeOneWeek => '1T';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1R';

  @override
  String get rangeFiveYears => '5L';

  @override
  String get chartUnavailable =>
      'Historia cen nie jest dostępna w bieżącym źródle danych.';

  @override
  String get sectionStatements => 'Sprawozdania finansowe (roczne)';

  @override
  String get labelFiscalYear => 'Rok obrotowy';

  @override
  String get labelRevenue => 'Przychody';

  @override
  String get labelNetIncome => 'Zysk netto';

  @override
  String get labelTotalAssets => 'Aktywa razem';

  @override
  String get labelTotalLiabilities => 'Zobowiązania razem';

  @override
  String get labelEquity => 'Kapitał własny';

  @override
  String get labelOperatingCashFlow =>
      'Przepływy pieniężne z działalności operacyjnej';

  @override
  String get statementsUnavailable =>
      'Raportowane sprawozdania finansowe nie są dostępne dla tej akcji.';

  @override
  String get launchAtLogin => 'Uruchamiaj przy logowaniu';

  @override
  String get hotkeyLabel => 'Skrót globalny';

  @override
  String get hotkeyRecordHint =>
      'Kliknij tutaj, a następnie naciśnij nową kombinację klawiszy';

  @override
  String get hotkeyReset => 'Przywróć domyślny';

  @override
  String get pasteImage => 'Wklej obraz ze schowka';

  @override
  String get errClipboardNoImage => 'W schowku nie ma obrazu.';

  @override
  String get favorites => 'Ulubione';

  @override
  String get addToFavorites => 'Dodaj do ulubionych';

  @override
  String get removeFromFavorites => 'Usuń z ulubionych';

  @override
  String get noFavorites =>
      'Brak ulubionych. Dotknij gwiazdki przy akcji, aby ją dodać.';

  @override
  String get displayCurrency => 'Waluta wyświetlania';

  @override
  String get displayCurrencyNone => 'Tylko własna waluta akcji';

  @override
  String labelConverted(String currency) {
    return '≈ w $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kurs: 1 $from = $rate $to (EBC, $date)';
  }

  @override
  String get updates => 'Aktualizacje';

  @override
  String currentVersion(String version) {
    return 'Wersja $version';
  }

  @override
  String get autoUpdate => 'Instaluj aktualizacje automatycznie';

  @override
  String get checkForUpdates => 'Sprawdź aktualizacje';

  @override
  String get updateChecking => 'Sprawdzanie aktualizacji…';

  @override
  String get updateUpToDate => 'Masz najnowszą wersję.';

  @override
  String updateAvailable(String version) {
    return 'Dostępna jest wersja $version.';
  }

  @override
  String get updateDownloading => 'Aktualizacja jest pobierana w tle…';

  @override
  String get updateDownloaded =>
      'Aktualizacja jest gotowa. Uruchom ponownie, aby ją zainstalować.';

  @override
  String get updateNow => 'Aktualizuj';

  @override
  String get restartNow => 'Uruchom ponownie';

  @override
  String get updatesViaStore =>
      'Aktualizacje są dostarczane automatycznie przez sklep z aplikacjami.';

  @override
  String get updateCheckFailed => 'Nie udało się sprawdzić aktualizacji.';

  @override
  String get subscription => 'Subskrypcja';

  @override
  String get planTrial => 'Okres próbny';

  @override
  String get planNormal => 'Standard';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Brak aktywnego planu';

  @override
  String planAnalysesPerMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analizy miesięcznie',
      many: '$count analiz miesięcznie',
      few: '$count analizy miesięcznie',
      one: '$count analiza miesięcznie',
    );
    return '$_temp0';
  }

  @override
  String planTrialDescription(int days, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$days-dniowy bezpłatny okres próbny z $count analizami',
      many: '$days-dniowy bezpłatny okres próbny z $count analizami',
      few: '$days-dniowy bezpłatny okres próbny z $count analizami',
      one: '$days-dniowy bezpłatny okres próbny z $count analizą',
    );
    return '$_temp0';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Pozostało $days dnia okresu próbnego',
      many: 'Pozostało $days dni okresu próbnego',
      few: 'Pozostały $days dni okresu próbnego',
      one: 'Pozostał $days dzień okresu próbnego',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Twój bezpłatny okres próbny dobiegł końca. Wybierz plan, aby dalej analizować.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Pozostało $remaining z $total analiz w tym okresie';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dodatkowej analizy',
      many: '$count dodatkowych analiz',
      few: '$count dodatkowe analizy',
      one: '$count dodatkowa analiza',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return 'Odnowienie $date';
  }

  @override
  String get choosePlan => 'Wybierz plan';

  @override
  String get currentPlan => 'Obecny plan';

  @override
  String get subscribe => 'Subskrybuj';

  @override
  String get perMonth => '/ mies.';

  @override
  String get extraPacksTitle => 'Potrzebujesz więcej? Kup dodatkowe analizy';

  @override
  String get extraPacksHint =>
      'Dodatkowe analizy nigdy nie wygasają i są wykorzystywane po wyczerpaniu miesięcznego limitu.';

  @override
  String get buy => 'Kup';

  @override
  String get restorePurchases => 'Przywróć zakupy';

  @override
  String get manageSubscription => 'Zarządzaj subskrypcją';

  @override
  String get purchaseSuccess => 'Dziękujemy! Twój zakup jest aktywny.';

  @override
  String get purchasePending => 'Zakup w toku…';

  @override
  String get purchaseFailed => 'Nie udało się zrealizować zakupu.';

  @override
  String get purchaseCanceled => 'Zakup anulowany.';

  @override
  String get billingUnavailable =>
      'Zakupy nie są jeszcze dostępne na tej platformie. Subskrybuj na telefonie lub Macu; Twój plan będzie działać na każdym urządzeniu.';

  @override
  String get errQuotaExceeded =>
      'Nie masz już analiz w tym okresie. Zmień plan na wyższy lub kup dodatkowe analizy.';

  @override
  String get errTrialExpired =>
      'Twój bezpłatny okres próbny dobiegł końca. Wybierz plan, aby kontynuować.';

  @override
  String get errNoPlan => 'Do analizy AI potrzebny jest aktywny plan.';

  @override
  String get viewPlans => 'Zobacz plany';

  @override
  String get usageTitle => 'Wykorzystanie';

  @override
  String get demoPurchaseNote =>
      'Rozliczenia demo: zakupy na tej platformie są symulowane.';

  @override
  String get mostPopular => 'Najpopularniejszy';

  @override
  String get bestValue => 'Najkorzystniejszy';

  @override
  String get planFeaturesCommon =>
      'Rozpoznawanie zdjęć, dane na żywo, wykresy, ulubione i wszystkie 120 języki są dostępne w każdym planie. Limit dotyczy analiz AI.';

  @override
  String get searchLanguages => 'Szukaj języków…';

  @override
  String get noLanguageMatch => 'Brak pasujących języków.';

  @override
  String get aiSettings => 'Analiza AI';

  @override
  String get aiLength => 'Długość';

  @override
  String get aiDepthBrief => 'Krótko';

  @override
  String get aiDepthStandard => 'Standardowo';

  @override
  String get aiDepthDeep => 'Szczegółowo';

  @override
  String get aiDepthBriefDesc => 'Najważniejsze informacje, szybko.';

  @override
  String get aiDepthStandardDesc => 'Pełny raport ze wszystkimi sekcjami.';

  @override
  String get aiDepthDeepDesc =>
      'Więcej wyszukiwań w sieci, porównanie z konkurencją i więcej szczegółów.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Około $min–$max słów';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'zużywa $count analizy',
      many: 'zużywa $count analiz',
      few: 'zużywa $count analizy',
      one: 'zużywa $count analizę',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Poziom czytelnika';

  @override
  String get aiReaderBeginner => 'Początkujący';

  @override
  String get aiReaderExperienced => 'Doświadczony';

  @override
  String get aiReaderBeginnerDesc =>
      'Prosty język; każdy termin fachowy jest wyjaśniony.';

  @override
  String get aiReaderExperiencedDesc =>
      'Bardziej zwięzły tekst ze standardową terminologią finansową.';

  @override
  String get aiCounterArgument => 'Najmocniejszy kontrargument';

  @override
  String get aiCounterArgumentDesc =>
      'Podsumowanie zawsze kończy się najmocniejszym argumentem przeciwko własnemu wnioskowi.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'W Twoim planie do $count wyszukiwania w sieci na analizę',
      many: 'W Twoim planie do $count wyszukiwań w sieci na analizę',
      few: 'W Twoim planie do $count wyszukiwań w sieci na analizę',
      one: 'W Twoim planie do $count wyszukiwania w sieci na analizę',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standardowa długość według planu: Standard $normal, Pro $pro, Max $max, Ultra $ultra. „Krótko” – o 2 mniej, „Szczegółowo” – o 2 więcej.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'do $count wyszukiwania w sieci',
      many: 'do $count wyszukiwań w sieci',
      few: 'do $count wyszukiwań w sieci',
      one: 'do $count wyszukiwania w sieci',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wyszukiwania w sieci na analizę',
      many: '$count wyszukiwań w sieci na analizę',
      few: '$count wyszukiwania w sieci na analizę',
      one: '$count wyszukiwanie w sieci na analizę',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Ta długość wymaga analiz: $needed, a pozostało: $left. Wybierz krótszą długość w Ustawieniach lub zdobądź więcej analiz.';
  }

  @override
  String get outlookMarketMood => 'Nastroje rynkowe';

  @override
  String get moodVeryPessimistic => 'Bardzo pesymistyczne';

  @override
  String get moodPessimistic => 'Pesymistyczne';

  @override
  String get moodNeutral => 'Neutralne';

  @override
  String get moodOptimistic => 'Optymistyczne';

  @override
  String get moodVeryOptimistic => 'Bardzo optymistyczne';

  @override
  String get scenarioBull => 'Scenariusz optymistyczny';

  @override
  String get scenarioBase => 'Scenariusz bazowy';

  @override
  String get scenarioBear => 'Scenariusz pesymistyczny';

  @override
  String outlookCurrentPrice(String price) {
    return 'Aktualna cena: $price';
  }

  @override
  String get outlookKeyLevels => 'Kluczowe poziomy';

  @override
  String get keyLevelSupport => 'Wsparcie';

  @override
  String get keyLevelResistance => 'Opór';

  @override
  String get keyLevelAnchor => 'Kotwica cenowa';

  @override
  String get upcomingEvents => 'Nadchodzące wydarzenia';

  @override
  String get outlookChartNote =>
      'Zakresy orientacyjne; prawdopodobieństwa to przybliżone oceny, a nie prognozy.';

  @override
  String get accountTitle => 'Konto';

  @override
  String get signIn => 'Zaloguj się';

  @override
  String get signOut => 'Wyloguj się';

  @override
  String get notSignedIn => 'Nie zalogowano';

  @override
  String get accountBenefit =>
      'Zaloguj się, aby Twoja subskrypcja działała na wszystkich Twoich urządzeniach.';

  @override
  String get accountSyncedNote =>
      'Twoja subskrypcja i pozostałe analizy są takie same na każdym urządzeniu.';

  @override
  String get signInTitle => 'Zaloguj się do WhatStock';

  @override
  String get emailLabel => 'Adres e-mail';

  @override
  String get continueWithEmail => 'Kontynuuj z e-mailem';

  @override
  String codeSentTo(String email) {
    return 'Wysłaliśmy 6-cyfrowy kod na adres $email. Jest ważny przez 10 minut.';
  }

  @override
  String get codeLabel => 'Kod logowania';

  @override
  String get resendCode => 'Wyślij nowy kod';

  @override
  String get useDifferentEmail => 'Użyj innego adresu e-mail';

  @override
  String get errInvalidCode => 'Kod jest nieprawidłowy lub wygasł.';

  @override
  String get errInvalidEmail => 'Wpisz prawidłowy adres e-mail.';

  @override
  String get errSignInFailed =>
      'Logowanie nie powiodło się. Sprawdź połączenie z internetem i spróbuj ponownie.';

  @override
  String get checkoutWaiting =>
      'Dokończ płatność w przeglądarce. Aplikacja zaktualizuje się automatycznie po jej zakończeniu.';

  @override
  String get paymentViaStripe =>
      'Bezpieczna płatność w przeglądarce przez Stripe. Możesz anulować w dowolnym momencie.';

  @override
  String get paymentViaStore =>
      'Płatność przez Twoje konto App Store lub Google Play. Możesz anulować w dowolnym momencie w ustawieniach sklepu.';

  @override
  String get keySpace => 'Spacja';

  @override
  String get doubleOptionTitle => 'Dwukrotne naciśnięcie Option';

  @override
  String get doubleOptionSubtitle =>
      'Szybkie dwukrotne naciśnięcie klawisza Option również przywołuje WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Aby działało to również w innych aplikacjach, zezwól WhatStock na dostęp w sekcji Ustawienia systemowe → Prywatność i ochrona → Monitorowanie wprowadzania, a następnie ponownie otwórz aplikację.';

  @override
  String get openSystemSettings => 'Otwórz Ustawienia systemowe';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Naciśnij $shortcut lub dwukrotnie naciśnij Option w dowolnym miejscu, aby przywołać WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Najbardziej prawdopodobny';

  @override
  String get longTermToday => 'Dziś';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years roku',
      many: '$years lat',
      few: '$years lata',
      one: '1 rok',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range rocznie';
  }

  @override
  String longTermLikely(String price) {
    return 'najprawdopodobniej $price';
  }

  @override
  String get confidenceLow => 'Niska pewność';

  @override
  String get confidenceMedium => 'Średnia pewność';

  @override
  String get confidenceHigh => 'Wysoka pewność';

  @override
  String get longTermNote =>
      'Przedziały długoterminowe opierają się na podanych założeniach i z czasem się poszerzają. Ceny bez dywidend. Zgrubne szacunki, nie prognozy.';

  @override
  String get portfolio => 'Portfel';

  @override
  String get portfolioEmpty =>
      'Na razie pusto. Otwórz akcję i dotknij „Dodaj do portfela”, aby śledzić swoje walory.';

  @override
  String get portfolioLocalNote =>
      'Zapisywane tylko na tym urządzeniu. Sumy są przeliczane po kursach referencyjnych EBC; ceny mogą być opóźnione.';

  @override
  String get addToPortfolio => 'Dodaj do portfela';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Dodaj $symbol';
  }

  @override
  String get portfolioQuantity => 'Liczba akcji';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Cena za akcję ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Data zakupu';

  @override
  String get portfolioAdd => 'Dodaj';

  @override
  String get portfolioInvalidNumber => 'Wpisz liczbę większą od zera.';

  @override
  String portfolioAdded(String symbol) {
    return 'Dodano $symbol do portfela.';
  }

  @override
  String get portfolioTotalValue => 'Wartość łączna';

  @override
  String get portfolioToday => 'Dziś';

  @override
  String get portfolioGainLoss => 'Zysk/strata';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dywidendy w tym roku: $amount';
  }

  @override
  String get portfolioInvested => 'Zainwestowano';

  @override
  String get portfolioAllocation => 'Struktura';

  @override
  String get portfolioPositions => 'Pozycje';

  @override
  String portfolioAvgCost(String price) {
    return 'śr. cena zakupu $price';
  }

  @override
  String get portfolioYourPosition => 'Twoja pozycja';

  @override
  String get portfolioPurchases => 'Zakupy';

  @override
  String get portfolioRemove => 'Usuń';

  @override
  String get portfolioExcluded =>
      'Pozycje bez ceny lub kursu walut nie są wliczane do sum.';

  @override
  String get priceAlerts => 'Alerty cenowe';

  @override
  String get setPriceAlert => 'Ustaw alert cenowy';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alert cenowy · $symbol';
  }

  @override
  String get alertKindAbove => 'Wzrośnie powyżej';

  @override
  String get alertKindBelow => 'Spadnie poniżej';

  @override
  String get alertKindMove => 'Mocno się ruszy w ciągu dnia';

  @override
  String alertTargetPrice(String currency) {
    return 'Cena ($currency)';
  }

  @override
  String get alertMovePercent => 'Zmiana dzienna (%)';

  @override
  String get alertAlreadyMet => 'Cena jest już za tym poziomem.';

  @override
  String get alertSave => 'Ustaw alert';

  @override
  String alertCreated(String symbol) {
    return 'Ustawiono alert dla $symbol.';
  }

  @override
  String get alertsEmpty => 'Brak alertów. Otwórz akcję i dotknij dzwonka.';

  @override
  String get alertsNote =>
      'Alerty są sprawdzane co 5 minut, gdy WhatStock działa. Na komputerze aplikacja działa dalej na pasku menu lub w zasobniku; na telefonie alerty na razie przychodzą, gdy aplikacja jest otwarta.';

  @override
  String alertDescAbove(String price) {
    return 'Powyżej $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Poniżej $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Zmiana dzienna ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Zadziałał $date przy $price';
  }

  @override
  String get alertRearm => 'Uzbrój ponownie';

  @override
  String get alertDelete => 'Usuń';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol wzrósł powyżej $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol spadł poniżej $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol zmienił się dziś o $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Aktualna cena: $price';
  }

  @override
  String get alertOpen => 'Otwórz';

  @override
  String get keepInTrayTitle => 'Działaj po zamknięciu okna';

  @override
  String get keepInTraySubtitle =>
      'WhatStock zostaje na pasku menu lub w zasobniku, więc skrót klawiszowy i alerty cenowe nadal działają.';

  @override
  String get termsOfUse => 'Warunki korzystania';

  @override
  String get privacyPolicy => 'Polityka prywatności';

  @override
  String get subscriptionLegal =>
      'Subskrypcja odnawia się automatycznie co miesiąc, dopóki jej nie anulujesz. Subskrybując, akceptujesz Warunki korzystania i Politykę prywatności.';

  @override
  String get deleteAccount => 'Usuń konto';

  @override
  String get deleteAccountTitle => 'Usunąć konto?';

  @override
  String get deleteAccountBody =>
      'Twoje konto i wszystko, co przechowujemy na serwerze (e-mail, limit, użycie), zostanie trwale usunięte, a niewykorzystane analizy przepadną. Subskrypcja opłacona w przeglądarce zostanie od razu anulowana; subskrypcję z App Store lub Google Play anulujesz w ustawieniach sklepu.';

  @override
  String get deleteLocalData =>
      'Usuń też dane na tym urządzeniu (portfel, alerty, ulubione, historia, zapisane analizy)';

  @override
  String get deleteAccountConfirm => 'Usuń trwale';

  @override
  String get accountDeleted => 'Twoje konto zostało usunięte.';

  @override
  String get errDeleteAccount =>
      'Nie udało się usunąć konta. Sprawdź połączenie i spróbuj ponownie.';

  @override
  String get aiTrialBriefNote =>
      'Analizy w okresie próbnym są krótkie i powstają z użyciem szybszego modelu AI. Z planem otrzymujesz nasz najbardziej zaawansowany model AI, więcej wyszukiwań w sieci oraz standardową i szczegółową długość analiz.';

  @override
  String get billingMonthly => 'Miesięcznie';

  @override
  String get billingYearly => 'Rocznie';

  @override
  String get yearlyDiscount => '2 miesiące gratis';

  @override
  String get perYear => '/ rok';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price miesięcznie';
  }

  @override
  String get subscriptionLegalYearly =>
      'Subskrypcja roczna odnawia się automatycznie co roku, dopóki jej nie anulujesz. Subskrybując, akceptujesz Warunki korzystania i Politykę prywatności.';

  @override
  String get myAnalyses => 'Moje analizy';

  @override
  String get navAlerts => 'Alerty';

  @override
  String get inviteTitle => 'Zamknięty podgląd';

  @override
  String get inviteBody =>
      'WhatStock jest na razie dostępny tylko na zaproszenie. Wpisz otrzymany kod zaproszenia.';

  @override
  String get inviteCodeLabel => 'Kod zaproszenia';

  @override
  String get inviteContinue => 'Dalej';

  @override
  String get inviteInvalid => 'Ten kod zaproszenia jest nieprawidłowy.';

  @override
  String get inviteExpired =>
      'To zaproszenie wygasło. Poproś osobę, która cię zaprosiła, o nowy kod.';

  @override
  String get inviteDeviceLimit =>
      'Ten kod zaproszenia jest już używany na maksymalnej liczbie urządzeń.';

  @override
  String get previewConfidential => 'Poufny podgląd';

  @override
  String get errPreviewDailyLimit =>
      'Wyczerpano dzisiejszy limit analiz w tym podglądzie. Spróbuj ponownie jutro.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count godziny temu',
      many: '$count godzin temu',
      few: '$count godziny temu',
      one: '$count godzinę temu',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dnia temu',
      many: '$count dni temu',
      few: '$count dni temu',
      one: '$count dzień temu',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Zaktualizować tę analizę?';

  @override
  String staleBody(String age) {
    return 'Została utworzona $age. Od tego czasu kursy, wiadomości i wyniki mogły się zmienić.';
  }

  @override
  String get staleKeep => 'Pokaż wcześniejszą';

  @override
  String get staleRefresh => 'Utwórz nową';

  @override
  String seeAll(int count) {
    return 'Zobacz wszystkie ($count)';
  }

  @override
  String get searchAnalyses => 'Szukaj w swoich analizach';

  @override
  String get deleteAnalysis => 'Usuń';

  @override
  String analysisDeleted(String symbol) {
    return 'Usunięto analizę $symbol';
  }

  @override
  String get keyLevelAlertHint =>
      'Dotknij poziomu, aby dostać alert, gdy cena go osiągnie.';

  @override
  String get shareAnalysisTitle => 'Udostępnij analizę';

  @override
  String get shareAsImage => 'Udostępnij jako obraz';

  @override
  String get shareAsText => 'Udostępnij jako tekst';

  @override
  String get shareCardFooter => 'Utworzono w WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Analiza AI · nie stanowi porady inwestycyjnej';

  @override
  String get referralTitle => 'Zaproś znajomych';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dodatkowej analizy',
      many: '$count dodatkowych analiz',
      few: '$count dodatkowe analizy',
      one: '$count dodatkową analizę',
    );
    return 'Udostępnij swój kod. Znajomy od razu dostaje $_temp0, a ty dostajesz tyle samo po pierwszej analizie znajomego.';
  }

  @override
  String get referralYourCode => 'Twój kod';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Zaproszeni: $invited · Nagrodzeni: $rewarded';
  }

  @override
  String get referralHaveCode => 'Masz kod od znajomego?';

  @override
  String get referralRedeem => 'Wykorzystaj';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodano $count dodatkowej analizy. Witamy!',
      many: 'Dodano $count dodatkowych analiz. Witamy!',
      few: 'Dodano $count dodatkowe analizy. Witamy!',
      one: 'Dodano $count dodatkową analizę. Witamy!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Taki kod nie istnieje. Sprawdź go i spróbuj ponownie.';

  @override
  String get referralErrOwn => 'Nie możesz wykorzystać własnego kodu.';

  @override
  String get referralErrAlready =>
      'Na tym koncie wykorzystano już kod od znajomego.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dodatkowej analizy',
      many: '$count dodatkowych analiz',
      few: '$count dodatkowe analizy',
      one: '$count dodatkową analizę',
    );
    return 'Analizuję akcje w WhatStock: zrób zdjęcie akcji, a AI ją objaśni. Z moim kodem $code dostaniesz $_temp0.';
  }

  @override
  String get referralCopied => 'Skopiowano kod';

  @override
  String get onboardTitle1 => 'Sfotografuj akcję';

  @override
  String get onboardBody1 =>
      'Wystarczy ekran aplikacji maklerskiej, gazeta lub logo firmy: WhatStock rozpozna akcję i pokaże jej kurs, wykres oraz najważniejsze wskaźniki.';

  @override
  String get onboardTitle2 => 'Zrozum ją w kilka minut';

  @override
  String get onboardBody2 =>
      'Analiza AI wyjaśnia, co porusza kursem akcji, jakie są ryzyka i jak wygląda wycena, oraz przedstawia trzy scenariusze, dokąd może zmierzać cena – ze źródłami i w Twoim języku.';

  @override
  String get onboardTitle3 => 'Bądź na bieżąco';

  @override
  String get onboardBody3 =>
      'Ulubione, Twój portfel i alerty cenowe informują Cię na bieżąco. Twoje analizy zostają na urządzeniu, gotowe do ponownego otwarcia.';

  @override
  String get onboardNext => 'Dalej';

  @override
  String get onboardStart => 'Zaczynamy';

  @override
  String get onboardSkip => 'Pomiń';

  @override
  String changesTitle(String date) {
    return 'Od poprzedniej analizy ($date)';
  }

  @override
  String get changesPrice => 'Kurs';

  @override
  String get changesNoMajor => 'Perspektywy nie zmieniły się istotnie.';

  @override
  String get changesPreviousSummary => 'Poprzednie podsumowanie';

  @override
  String get telemetryTitle => 'Pomóż ulepszyć WhatStock';

  @override
  String get telemetryBody =>
      'Udostępniaj anonimowe statystyki użytkowania i raporty o awariach: z których funkcji się korzysta i co poszło nie tak. Nigdy Twoich akcji, analiz ani danych osobowych. Możesz to zmienić w dowolnym momencie w Ustawieniach.';

  @override
  String get telemetryAllow => 'Zezwól';

  @override
  String get telemetryDecline => 'Nie, dziękuję';

  @override
  String get telemetrySetting => 'Anonimowe statystyki i raporty o awariach';

  @override
  String get telemetrySettingHint =>
      'Jak często używane są funkcje oraz raporty o błędach – bez danych osobowych ani treści Twoich wyszukiwań i analiz.';

  @override
  String get askButton => 'Zapytaj o tę analizę';

  @override
  String askTitle(String symbol) {
    return 'Pytania o $symbol';
  }

  @override
  String get askIntro =>
      'Zapytaj o cokolwiek w analizie: co oznacza dane ryzyko, co mogłoby zmienić perspektywy, jak wyliczono daną liczbę. Odpowiedzi opierają się na tej analizie i nie stanowią porady inwestycyjnej.';

  @override
  String get askHint => 'Zadaj pytanie…';

  @override
  String get askSend => 'Wyślij';

  @override
  String get askThinking => 'Myślę…';

  @override
  String get askSuggest1 => 'Jakie jest największe ryzyko?';

  @override
  String get askSuggest2 => 'Co mogłoby zmienić perspektywy?';

  @override
  String get askSuggest3 => 'Wyjaśnij to prostymi słowami';

  @override
  String get askMaxReached =>
      'To było ostatnie pytanie do tej analizy. Aby zapytać o więcej, wygeneruj nową analizę.';

  @override
  String get errAskLimit =>
      'Wyczerpano dzisiejszy limit pytań. Spróbuj ponownie jutro.';

  @override
  String get eventTomorrow => 'Jutro';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'za $days dnia',
      many: 'za $days dni',
      few: 'za $days dni',
      one: 'za $days dzień',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Wyniki kwartalne';

  @override
  String get eventBeforeOpen => 'przed otwarciem sesji';

  @override
  String get eventAfterClose => 'po zamknięciu sesji';

  @override
  String eventEpsEstimate(String value) {
    return 'Prognoza EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Z Twojej analizy';

  @override
  String get eventDividend => 'Spodziewana dywidenda';

  @override
  String get eventDividendEstimate =>
      'Oszacowano na podstawie zapisanych wypłat';

  @override
  String get eventsHint =>
      'Daty wyników Twoich ulubionych spółek i spółek z portfela na najbliższe 90 dni, wydarzenia z datą wskazane przez Twoje analizy oraz dywidendy spodziewane na podstawie zapisanych wypłat.';

  @override
  String get eventsEmpty =>
      'Brak wydarzeń z datą w ciągu najbliższych 90 dni. Dodaj ulubione lub spółki do portfela, aby zobaczyć tutaj daty ich wyników; zapisane dywidendy pokazują następną spodziewaną wypłatę.';

  @override
  String get compareTitle => 'Porównaj';

  @override
  String get compareAdd => 'Dodaj akcję';

  @override
  String get compareRemove => 'Usuń';

  @override
  String get compareTickerHint => 'Symbol, np. MSFT';

  @override
  String get compareHint =>
      'Kluczowe wskaźniki obok siebie; najlepsza wartość w każdym wierszu jest wyróżniona. Kwoty podano w walucie danej akcji.';

  @override
  String get compareNoAnalysis => 'Brak analizy';

  @override
  String get portfolioDividends => 'Roczna dywidenda';

  @override
  String portfolioDividendYield(String percent) {
    return 'Stopa dywidendy $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Oczekiwana roczna dywidenda opiera się na dywidendach wypłaconych w ciągu ostatnich 12 miesięcy; przyszłe wypłaty nie są gwarantowane.';

  @override
  String positionDividend(String amount) {
    return 'Dywidenda: $amount rocznie';
  }

  @override
  String get chartAvgCost => 'Twoja śr.';

  @override
  String get chartAlertLevel => 'Alert';

  @override
  String get marketsToday => 'Rynki dziś';

  @override
  String get notesTitle => 'Moje notatki';

  @override
  String get notesHint =>
      'Powód zakupu? Co obserwujesz? Co skłoniłoby cię do sprzedaży?';

  @override
  String get notesInfo =>
      'Zapisywane tylko na tym urządzeniu. Analiza AI uwzględnia twoje notatki.';

  @override
  String notesSaved(String date) {
    return 'Zapisano $date';
  }

  @override
  String get peersTitle => 'Podobne spółki';

  @override
  String get portfolioExport => 'Eksportuj do CSV';

  @override
  String get portfolioImport => 'Importuj z CSV';

  @override
  String get portfolioImportHint =>
      'Wklej jeden zakup w każdym wierszu: symbol giełdowy, liczba, cena, waluta, data (RRRR-MM-DD). Kolumny mogą być rozdzielone przecinkami, średnikami lub tabulatorami; wiersz nagłówka jest opcjonalny.';

  @override
  String get portfolioImportButton => 'Importuj';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodano $count zakupu',
      many: 'Dodano $count zakupów',
      few: 'Dodano $count zakupy',
      one: 'Dodano $count zakup',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pominięto $count wiersza',
      many: 'Pominięto $count wierszy',
      few: 'Pominięto $count wiersze',
      one: 'Pominięto $count wiersz',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfel, ulubione, alerty cenowe i notatki są synchronizowane na wszystkich Twoich urządzeniach.';

  @override
  String syncLast(String time) {
    return 'Ostatnia synchronizacja: $time';
  }

  @override
  String get syncNow => 'Synchronizuj teraz';

  @override
  String get syncFailed =>
      'Synchronizacja nie powiodła się. Ponowna próba nastąpi automatycznie.';

  @override
  String get alertEmailTitle => 'E-mail po uruchomieniu alertu';

  @override
  String get alertEmailOn =>
      'Co kilka minut sprawdzamy Twoje alerty i wysyłamy Ci e-mail, nawet gdy aplikacja jest zamknięta.';

  @override
  String get alertEmailSignIn =>
      'Zaloguj się adresem e-mail w Ustawieniach, aby otrzymywać alerty e-mailem, nawet gdy aplikacja jest zamknięta.';

  @override
  String get portfolioHistory => 'Wartość w czasie';

  @override
  String get portfolioReviewTitle => 'Analiza portfela AI';

  @override
  String get portfolioReviewIntro =>
      'AI przegląda cały Twój portfel: koncentrację, ekspozycję na sektory i waluty, ryzyka wspólne dla Twoich akcji oraz dywidendy. Zużywa 1 analizę.';

  @override
  String get portfolioReviewButton => 'Przeanalizuj mój portfel';

  @override
  String get portfolioReviewAgain => 'Przeanalizuj ponownie';

  @override
  String get portfolioReviewWorking => 'Analizowanie portfela…';

  @override
  String get digestTitle => 'Cotygodniowe podsumowanie e-mailem';

  @override
  String get digestHint =>
      'W każdy poniedziałek: jak w zeszłym tygodniu zmieniały się Twoje ulubione i portfel oraz najbliższe daty ich wyników.';

  @override
  String get benchmarkTitle => 'W porównaniu z S&P 500';

  @override
  String get benchmarkTitleIndex => 'W porównaniu z indeksem';

  @override
  String get benchmarkHintIndex =>
      'Tak, jakby każdy zakup trafił tego samego dnia do funduszu odwzorowującego wybrany indeks. Bez dywidend; przeszłe stopy zwrotu nie przewidują przyszłych.';

  @override
  String get benchmarkYours => 'Twoje zakupy';

  @override
  String benchmarkAhead(String points) {
    return 'O $points pkt proc. lepiej niż indeks';
  }

  @override
  String benchmarkBehind(String points) {
    return 'O $points pkt proc. gorzej niż indeks';
  }

  @override
  String get portfolioSell => 'Sprzedaj';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Sprzedaj $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Cena sprzedaży za akcję ($currency)';
  }

  @override
  String get portfolioSellDate => 'Data sprzedaży';

  @override
  String get portfolioSellAll => 'Wszystkie';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Masz $quantity';
  }

  @override
  String get portfolioSold => 'Sprzedano';

  @override
  String get portfolioRealized => 'Zrealizowane';

  @override
  String get portfolioClosed => 'Zamknięte pozycje';

  @override
  String get portfolioClosedNote => 'Wszystkie akcje sprzedane';

  @override
  String get portfolioTransactions => 'Transakcje';

  @override
  String get portfolioRealizedByYear => 'Zrealizowane zyski według lat';

  @override
  String get portfolioRealizedHint =>
      'Sprzedaże są najpierw przypisywane do najstarszych zakupów (FIFO) i przeliczane po dzisiejszym kursie. Do zeznania podatkowego użyj wyciągu od swojego brokera.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Od tej analizy opublikowano nowe wyniki kwartalne ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Nowe wyniki';

  @override
  String get portfolioImportBrokers =>
      'Rozpoznawane są też eksporty z Revolut, Trading 212 i Interactive Brokers, łącznie ze sprzedażą; dywidendy i wpłaty są pomijane.';

  @override
  String get portfolioImportFile => 'Wybierz plik';

  @override
  String offlineBanner(String time) {
    return 'Brak połączenia – wyświetlane są ostatnio zapisane dane ($time).';
  }

  @override
  String get glossMarketCap =>
      'Ile cała spółka jest warta na giełdzie: cena akcji × liczba akcji.';

  @override
  String get glossSharesOutstanding =>
      'Ile akcji wyemitowała spółka. Gdy ich przybywa, każda akcja ma mniejszy kawałek firmy; skup akcji własnych zmniejsza tę liczbę.';

  @override
  String get glossPeTrailing =>
      'Cena ÷ zysk na akcję z ostatnich 12 miesięcy: za ile lat obecnego zysku płacisz. Niższy oznacza taniej, ale szybko rosnące spółki zwykle mają wysoki P/E.';

  @override
  String get glossPeForward =>
      'Jak P/E, ale z zyskiem, którego analitycy oczekują w kolejnych 12 miesiącach. Niższy niż historyczny P/E oznacza, że oczekuje się wzrostu zysków.';

  @override
  String get glossPb =>
      'Cena ÷ wartość księgowa (aktywa minus długi) na akcję. Około 1 oznacza, że rynek wycenia spółkę na tyle, ile posiada na papierze.';

  @override
  String get glossPs =>
      'Wartość rynkowa ÷ roczne przychody. Przydatny dla spółek z niewielkim lub zerowym zyskiem; porównuj w obrębie tej samej branży.';

  @override
  String get glossEvToFcf =>
      'Wartość firmy wraz z długiem (EV) ÷ gotówka, którą generuje w ciągu roku po inwestycjach. Niższy oznacza więcej gotówki za tę cenę.';

  @override
  String get glossPeg =>
      'P/E ÷ oczekiwany roczny wzrost zysku (%). Około 1 często uznaje się za uczciwą wycenę; pokazuje P/E w świetle wzrostu.';

  @override
  String get glossEps =>
      'Zysk na akcję z ostatnich 12 miesięcy. Rosnący z roku na rok EPS to jeden z najmocniejszych znaków zdrowej spółki.';

  @override
  String get glossBeta =>
      'Jak mocno akcja porusza się razem z rynkiem: 1 = jak rynek, 1,5 = wahania większe o około 50%, poniżej 1 = spokojniej.';

  @override
  String get glossRevenueTtm =>
      'Łączna sprzedaż z ostatnich 12 miesięcy, przed odjęciem jakichkolwiek kosztów.';

  @override
  String get glossNetIncomeTtm =>
      'Zysk pozostały po wszystkich kosztach, odsetkach i podatkach z ostatnich 12 miesięcy.';

  @override
  String get glossGrossMargin =>
      'Część przychodów, która zostaje po bezpośrednich kosztach produktów. Wysoka marża często oznacza siłę cenową.';

  @override
  String get glossOperatingMargin =>
      'Część przychodów, która zostaje po kosztach prowadzenia firmy (płace, czynsz, marketing), przed odsetkami i podatkami.';

  @override
  String get glossNetMargin =>
      'Część przychodów, która staje się ostatecznym zyskiem. 20% oznacza, że z każdych 100 ze sprzedaży 20 to zysk.';

  @override
  String get glossRoe =>
      'Rentowność kapitału własnego: roczny zysk ÷ kapitał właścicieli. Pokazuje, jak dobrze zarząd wykorzystuje pieniądze akcjonariuszy; powyżej około 15% to dobry wynik.';

  @override
  String get glossRoa =>
      'Rentowność aktywów: roczny zysk ÷ wszystko, co posiada spółka. Porównuj w obrębie tej samej branży.';

  @override
  String get glossDebtToEquity =>
      'Dług ÷ kapitał właścicieli. Wyższy oznacza więcej pożyczonych pieniędzy: większe ryzyko, gdy stopy rosną lub biznes zwalnia.';

  @override
  String get glossCurrentRatio =>
      'Aktywa krótkoterminowe ÷ zobowiązania płatne w ciągu roku. Powyżej 1 oznacza, że spółka pokryje swoje bieżące rachunki.';

  @override
  String get glossRevenueGrowth =>
      'O ile wzrosły przychody w porównaniu z rokiem wcześniej.';

  @override
  String get glossEpsGrowth =>
      'O ile wzrósł zysk na akcję w porównaniu z rokiem wcześniej.';

  @override
  String get glossDividendYield =>
      'Roczna dywidenda ÷ cena akcji: gotówka, którą dostajesz co roku, jako procent tego, co płacisz.';

  @override
  String get glossDividendPerShare =>
      'Dywidenda wypłacona na jedną akcję w ostatnim roku.';

  @override
  String get glossPayoutRatio =>
      'Część zysku wypłacana jako dywidenda. Powyżej 100% spółka wypłaca więcej, niż zarabia, co rzadko trwa długo.';

  @override
  String get portfolioBeta => 'Beta portfela';

  @override
  String get glossPortfolioBeta =>
      'Beta twoich akcji ważona ich wartością: mniej więcej o ile procent zmieniają się twoje akcje, gdy rynek zmienia się o 1%. Powyżej 1 wahają się mocniej niż rynek, poniżej 1 słabiej. Gotówka nie jest uwzględniana.';

  @override
  String get portfolioTop3 => '3 największe pozycje';

  @override
  String get glossPortfolioTop3 =>
      'Jaka część wartości twoich akcji przypada na trzy największe pozycje. Im jest wyższa, tym bardziej złe wieści z jednej spółki mogą zaszkodzić całemu portfelowi.';

  @override
  String get glossDividendGrowth5y =>
      'O ile średnio rocznie rosła dywidenda na akcję w ostatnich pięciu latach. Stały wzrost zwykle oznacza, że spółka ufa swoim przepływom pieniężnym; obniżka często jest sygnałem ostrzegawczym.';

  @override
  String get glossYieldOnCost =>
      'Dywidendy otrzymane w ostatnich 12 miesiącach podzielone przez to, co zapłaciłeś za akcje, które nadal posiadasz. W odróżnieniu od stopy dywidendy odnosi się do twojej własnej ceny zakupu, a nie do dzisiejszego kursu.';

  @override
  String get glossTitle => 'Co to znaczy?';

  @override
  String get watchNewsTitle => 'Wiadomości o Twoich akcjach';

  @override
  String get undo => 'Cofnij';

  @override
  String get watchSort => 'Sortuj';

  @override
  String get watchSortOwn => 'Moja kolejność';

  @override
  String get watchSortGainers => 'Największe wzrosty najpierw';

  @override
  String get watchSortLosers => 'Największe spadki najpierw';

  @override
  String get watchSortName => 'Według tickera (A–Z)';

  @override
  String get watchHint =>
      'Przeciągnij uchwyt, aby zmienić kolejność, przesuń w lewo, aby usunąć. Linia pokazuje ostatnie 30 dni.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: Twoja analiza jest gotowa.';
  }

  @override
  String alertFromCost(String price) {
    return 'Względem Twojej średniej ceny zakupu ($price):';
  }

  @override
  String get briefTitle => 'Dziś z Twoimi akcjami';

  @override
  String get briefButton => 'Podsumuj dzień';

  @override
  String get briefHint =>
      'Krótkie podsumowanie AI tego, jak dziś zmieniał się Twój portfel i ulubione akcje oraz co mówią o nich najnowsze wiadomości. Nie zużywa analizy.';

  @override
  String get briefRefresh => 'Odśwież';

  @override
  String get sectionEarnings => 'Wyniki kwartalne';

  @override
  String earningsNext(String date) {
    return 'Następny raport: $date';
  }

  @override
  String get earningsExpected => 'Oczekiwany EPS';

  @override
  String get earningsReported => 'Raportowany EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Na poziomie oczekiwanego EPS lub powyżej w $beats z ostatnich $total kwartałów',
      one: 'Na poziomie oczekiwanego EPS lub powyżej w $beats z 1 kwartału',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol jutro publikuje wyniki kwartalne';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol dziś publikuje wyniki kwartalne';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: dziś spodziewana dywidenda';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Około $amount. Gdy wpłynie, zapisz ją w portfelu.';
  }

  @override
  String get dividendRemindersTitle => 'Przypomnienia o dywidendach';

  @override
  String get dividendRemindersSubtitle =>
      'Powiadomienie w dniu spodziewanej dywidendy, wyznaczonym na podstawie rytmu zapisanych wypłat, by można ją było zapisać';

  @override
  String get earningsRemindersTitle => 'Przypomnienia o wynikach';

  @override
  String get earningsRemindersSubtitle =>
      'Powiadomienie dzień przed publikacją wyników kwartalnych spółek z ulubionych lub portfela';

  @override
  String addAllToFavorites(int count) {
    return 'Dodaj wszystkie do ulubionych ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Importuj ze zrzutu ekranu';

  @override
  String get holdingsReading => 'Odczytywanie pozycji…';

  @override
  String get holdingsReviewTitle => 'Znalezione pozycje';

  @override
  String get holdingsReviewHint =>
      'Sprawdź liczby, zanim je dodasz. Cena to Twoja średnia cena zakupu za akcję, a nie dzisiejsza cena.';

  @override
  String get holdingsNoPrice => 'Brak średniej ceny zakupu na obrazie';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodaj $count pozycji',
      many: 'Dodaj $count pozycji',
      few: 'Dodaj $count pozycje',
      one: 'Dodaj $count pozycję',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Na tym obrazie nie znaleziono pozycji w akcjach. Spróbuj zrzutu ekranu strony z pozycjami lub portfelem u swojego brokera.';

  @override
  String get week52Range => 'Zakres 52-tygodniowy';

  @override
  String week52BelowHigh(String percent) {
    return '$percent poniżej maksimum 52-tygodniowego';
  }

  @override
  String get week52AtHigh => 'Na maksimum 52-tygodniowym';

  @override
  String get alertKindTrailing => 'Spadnie od szczytu';

  @override
  String get alertTrailingPercent => 'Spadek od szczytu (%)';

  @override
  String get alertTrailingHint =>
      'Podąża za ceną w górę: alert włączy się, gdy cena spadnie o tyle od najwyższego poziomu od chwili ustawienia.';

  @override
  String alertDescTrailing(String percent) {
    return 'Spadek o $percent od szczytu';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'dotychczasowy szczyt: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol spadł o $percent od szczytu';
  }

  @override
  String get sectionInsiders => 'Transakcje insiderów';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zakupu',
      many: '$count zakupów',
      few: '$count zakupy',
      one: '1 zakup',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sprzedaży',
      many: '$count sprzedaży',
      few: '$count sprzedaże',
      one: '1 sprzedaż',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Netto: $shares akcji';
  }

  @override
  String get insiderBuy => 'Kupno';

  @override
  String get insiderSell => 'Sprzedaż';

  @override
  String get insiderHint =>
      'Zakupy i sprzedaże na otwartym rynku dokonane przez członków zarządu i rady dyrektorów w ciągu ostatnich 90 dni (SEC Form 4). Wykonanie opcji i przyznane akcje nie są uwzględniane.';

  @override
  String get insiderNone =>
      'Brak zakupów lub sprzedaży insiderów na otwartym rynku w ciągu ostatnich 90 dni.';

  @override
  String get analystTrend => 'Jak zmieniały się opinie z miesiąca na miesiąc';

  @override
  String get watchListAll => 'Wszystkie';

  @override
  String get watchListNew => 'Nowa lista';

  @override
  String get watchListName => 'Nazwa listy';

  @override
  String get watchListRename => 'Zmień nazwę listy';

  @override
  String get watchListDelete => 'Usuń listę';

  @override
  String get watchListAddTo => 'Dodaj do listy';

  @override
  String get watchListEmpty =>
      'Na tej liście nie ma jeszcze akcji. Stuknij przycisk listy obok akcji, aby ją dodać.';

  @override
  String get portfolioAskTitle => 'Pytania o Twój portfel';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Kopia zapasowa';

  @override
  String get backupSave => 'Zapisz kopię zapasową';

  @override
  String get backupSaveHint =>
      'Twoje ulubione, listy, portfel, alerty i notatki w jednym pliku.';

  @override
  String get backupRestore => 'Przywróć z kopii zapasowej';

  @override
  String get backupRestoreHint =>
      'Dodaje zawartość pliku; nic z tego, co masz teraz, nie zostanie usunięte.';

  @override
  String get backupRestored => 'Przywrócono kopię zapasową.';

  @override
  String get backupInvalid => 'Ten plik nie jest kopią zapasową WhatStock.';

  @override
  String get allocationPositions => 'Akcje';

  @override
  String get allocationSectors => 'Sektory';

  @override
  String get allocationCurrencies => 'Waluty';

  @override
  String get allocationAccounts => 'Rachunki';

  @override
  String get compareReturn1y => 'Stopa zwrotu 1 rok';

  @override
  String get compareFromHigh => 'Od maksimum 52-tygodniowego';

  @override
  String get briefAutoTitle => 'Codzienne podsumowanie każdego ranka';

  @override
  String get briefAutoSubtitle =>
      '„Dziś z Twoimi akcjami” powstaje automatycznie po 7:00, gdy aplikacja jest uruchomiona; na komputerach poinformuje Cię o tym powiadomienie. Korzysta z dziennego limitu pytań, nie zużywa analizy.';

  @override
  String get targetsButton => 'Struktura docelowa';

  @override
  String get targetsTitle => 'Struktura docelowa';

  @override
  String get targetsHint =>
      'Ustaw, jaką część portfela ma stanowić każda spółka. Puste pole oznacza brak celu. Aplikacja pokaże, co kupić lub sprzedać, aby go osiągnąć.';

  @override
  String targetsSum(String percent) {
    return 'Razem: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Kup ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Sprzedaj ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Zgodnie z celem';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol przebił oczekiwany EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol poniżej oczekiwanego EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Raportowany EPS $actual, oczekiwany $estimate';
  }

  @override
  String get newsExplain => 'Co to oznacza?';

  @override
  String get watchAlertAll => 'Alert przy dużych ruchach dziennych';

  @override
  String get watchAlertAllHint =>
      'Alert cenowy dla każdej spółki z tej listy, który zadziała, gdy w ciągu dnia zmieni się ona o tyle w górę lub w dół. Spółki, które już mają taki alert, zachowują swój.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ustawiono $count alertu',
      many: 'Ustawiono $count alertów',
      few: 'Ustawiono $count alerty',
      one: 'Ustawiono $count alert',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Eksportuj zrealizowane zyski (CSV)';

  @override
  String get portfolioAnnualReturn => 'Roczna stopa zwrotu';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / rok';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Roczna stopa zwrotu ważona kapitałem (XIRR): uwzględnia terminy zakupów i sprzedaży, więc pieniądze dodane później jej nie zniekształcają. Wyświetlana, gdy twój pierwszy zakup ma co najmniej rok; dywidendy nie są uwzględnione.';

  @override
  String get eventsAddToCalendar => 'Dodaj do kalendarza (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Alert portfela';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Powiadomienie, gdy cały portfel zmieni się o tyle w ciągu dnia.';

  @override
  String get portfolioMoveAlertOff => 'Wyłączony';

  @override
  String portfolioMoveUp(String percent) {
    return 'Twój portfel zyskał dziś $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Twój portfel stracił dziś $percent';
  }

  @override
  String get whatIfTitle => 'A gdyby tak zainwestować?';

  @override
  String get whatIfAmount => 'Kwota';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount zainwestowane $period temu byłoby dziś warte';
  }

  @override
  String get whatIfNote =>
      'Tylko na podstawie ceny akcji: dywidendy, opłaty i podatki nie są uwzględnione. Przeszłe stopy zwrotu nie przewidują przyszłych.';

  @override
  String get watchShare => 'Udostępnij listę';

  @override
  String get watchImport => 'Dodaj symbole';

  @override
  String get watchImportHint =>
      'Wklej symbole giełdowe oddzielone przecinkami, spacjami lub nowymi wierszami – np. listę, którą ktoś ci udostępnił.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodano $count akcji',
      many: 'Dodano $count akcji',
      few: 'Dodano $count akcje',
      one: 'Dodano $count akcję',
      zero: 'Brak nowych akcji',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Największe najpierw';

  @override
  String get positionsSortGain => 'Najwyższa stopa zwrotu najpierw';

  @override
  String get positionsSortToday => 'Najlepsze dziś najpierw';

  @override
  String get chartMyBuys => 'Twoje zakupy';

  @override
  String get chartMySells => 'Twoje sprzedaże';

  @override
  String get shortcutsTitle => 'Skróty klawiszowe';

  @override
  String usMarketOpen(String time) {
    return 'Rynek USA otwarty · zamknięcie za $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Rynek USA zamknięty · otwarcie za $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours godz. $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days d. $hours godz.';
  }

  @override
  String get dividendGoalSet => 'Ustaw miesięczny cel dywidend';

  @override
  String get dividendGoalTitle => 'Miesięczny cel dywidend';

  @override
  String get dividendGoalAmount => 'Dywidendy miesięcznie';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Ok. $amount miesięcznie przy obecnych stopach dywidendy · $percent · cel: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Ok. $amount miesięcznie przy obecnych stopach dywidendy · Cel osiągnięty: $goal';
  }

  @override
  String get portfolioAccount => 'Rachunek';

  @override
  String get portfolioAccountHint => 'np. IKE (opcjonalnie)';

  @override
  String get portfolioAccountAdd => 'Podaj rachunek';

  @override
  String get portfolioAccountsAll => 'Wszystkie rachunki';

  @override
  String get portfolioAccountNote =>
      'Tylko transakcje tego rachunku. Gotówkę i dywidendy zobaczysz po wybraniu „Wszystkie rachunki”.';

  @override
  String get portfolioNoAccount => 'Bez rachunku';

  @override
  String portfolioFee(String currency) {
    return 'Prowizja ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Dodaj prowizję';

  @override
  String portfolioFeeRow(String amount) {
    return 'Prowizja: $amount';
  }

  @override
  String get portfolioGoalSet => 'Ustaw cel';

  @override
  String get portfolioGoalTitle => 'Cel portfela';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · cel: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Cel osiągnięty: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Usuń cel';

  @override
  String get alertEdit => 'Edytuj alert';

  @override
  String get positionOpenLots => 'Nadal posiadane (najpierw najstarsze)';

  @override
  String get lotRemoved => 'Usunięto transakcję';

  @override
  String get alertDeleted => 'Usunięto alert';

  @override
  String get alertsClearTriggered => 'Wyczyść uruchomione alerty';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wyczyszczono $count alertu',
      many: 'Wyczyszczono $count alertów',
      few: 'Wyczyszczono $count alerty',
      one: 'Wyczyszczono $count alert',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Ekran główny';

  @override
  String get allocationCountries => 'Kraje';

  @override
  String get newsExplainNoteResearch =>
      'Wyjaśnienie AI: sprawdza fakty w sieci, otwiera artykuł i ocenia, na ile wiarygodne jest źródło. Nie stanowi porady inwestycyjnej. Korzysta z dziennego limitu pytań, nie zużywa analizy.';

  @override
  String get sourceOfficial => 'Oficjalne';

  @override
  String get sourcePressRelease => 'Komunikat';

  @override
  String get sourceMajorNews => 'Duże medium';

  @override
  String get sourceOpinion => 'Opinia';

  @override
  String get earningsSummaryButton => 'Co było w ostatnim raporcie?';

  @override
  String get earningsSummaryNote =>
      'Podsumowanie AI komunikatu spółki o wynikach i doniesień prasowych, które znajduje w sieci. Nie stanowi porady inwestycyjnej. Korzysta z dziennego limitu pytań, nie zużywa analizy.';

  @override
  String get compareLastSurprise => 'EPS za ostatni kwartał vs oczekiwany';

  @override
  String get compareNextReport => 'Następny raport';

  @override
  String get resolvingDescription => 'Ustalanie, o którą akcję chodzi…';

  @override
  String get instrumentTitle => 'O tym instrumencie';

  @override
  String get instrumentHint =>
      'Dla tego symbolu nie ma profilu spółki – może to być ETF, fundusz lub kwit depozytowy. Zapytaj AI, co to jest, co zawiera i ile kosztuje.';

  @override
  String get instrumentAsk => 'Co to jest?';

  @override
  String get instrumentNote =>
      'Wyjaśnienie AI na podstawie strony funduszu u emitenta i serwisów finansowych, które znajduje w sieci. Nie stanowi porady inwestycyjnej. Korzysta z dziennego limitu pytań, nie zużywa analizy.';

  @override
  String suggestAskAi(String query) {
    return 'Zapytaj AI: „$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Brak aktualnej ceny dla $symbols.';
  }

  @override
  String get eventsRecentResults => 'Niedawno opublikowane wyniki';

  @override
  String get saveToNotes => 'Zapisz w moich notatkach';

  @override
  String get savedToNotes => 'Zapisano w twoich notatkach';

  @override
  String get portfolioDividendsReceived => 'Otrzymane dywidendy';

  @override
  String get portfolioDividendsThisYear => 'W tym roku';

  @override
  String get portfolioDividendsAllTime => 'Łącznie';

  @override
  String get portfolioAddDividend => 'Dodaj dywidendę';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Otrzymana kwota ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Data wypłaty';

  @override
  String get portfolioDividendsEmpty =>
      'Brak zapisanych dywidend. Dodaj je ręcznie lub zaimportuj eksport od swojego brokera – wiersze z dywidendami też zostaną wczytane.';

  @override
  String get portfolioSplit => 'Split akcji';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Split akcji: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Zakupy i sprzedaże z datą sprzed splitu zostaną skorygowane: liczba akcji zostanie pomnożona, a cena za akcję podzielona, więc koszt pozostanie bez zmian.';

  @override
  String get portfolioSplitRatio => 'Stosunek (nowe : stare)';

  @override
  String get portfolioSplitRatioError =>
      'Wpisz stosunek taki jak 10:1 lub 1:10 dla splitu odwrotnego (scalenia).';

  @override
  String get portfolioSplitDate => 'Data splitu';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Split akcji $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Split akcji usunięty';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodano splity akcji: $count',
      one: 'Dodano 1 split akcji',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodano $count dywidendy',
      many: 'Dodano $count dywidend',
      few: 'Dodano $count dywidendy',
      one: 'Dodano 1 dywidendę',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Eksportuj dywidendy (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dywidenda usunięta';

  @override
  String get portfolioDividendsHint =>
      'Kwoty takie, jakie wpłynęły na Twoje konto, w walucie wypłaty; sumy przeliczane są po dzisiejszym kursie. Do rozliczenia podatkowego użyj zestawienia od brokera.';

  @override
  String get awayTitle => 'Gdy cię nie było';

  @override
  String awaySince(String when) {
    return 'Od $when';
  }

  @override
  String get awayQuiet => 'Niewiele się zmieniło.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alertu uruchomionego',
      many: '$count alertów uruchomionych',
      few: '$count alerty uruchomione',
      one: '1 alert uruchomiony',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Opublikowane wyniki: $symbols';
  }

  @override
  String get moveWhyButton => 'Dlaczego dziś się porusza?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent dzisiaj';
  }

  @override
  String get moveWhyNote =>
      'Wyjaśnienie AI na podstawie dzisiejszych wiadomości znalezionych w sieci; prawdziwy powód może być nieznany lub inny. To nie jest porada inwestycyjna. Zużywa dzienny limit pytań, nie analizę.';

  @override
  String get sectionTechnical => 'Obraz techniczny';

  @override
  String get labelSma50 => 'Średnia 50-dniowa';

  @override
  String get labelSma200 => 'Średnia 200-dniowa';

  @override
  String get labelRsi => 'RSI (14 dni)';

  @override
  String get labelVolatility30 => 'Zmienność (30 dni)';

  @override
  String techAbove(String percent) {
    return '$percent powyżej';
  }

  @override
  String techBelow(String percent) {
    return '$percent poniżej';
  }

  @override
  String get techOverbought => 'wykupienie';

  @override
  String get techOversold => 'wyprzedanie';

  @override
  String get techNeutral => 'neutralnie';

  @override
  String get techGoldenCross =>
      'Średnia 50-dniowa jest powyżej 200-dniowej – według klasycznej interpretacji trend wzrostowy.';

  @override
  String get techDeathCross =>
      'Średnia 50-dniowa jest poniżej 200-dniowej – według klasycznej interpretacji trend spadkowy.';

  @override
  String get glossSma50 =>
      'Średnia cena zamknięcia z ostatnich 50 sesji. Kurs powyżej niej często odczytuje się jako krótkoterminową siłę, poniżej – jako słabość.';

  @override
  String get glossSma200 =>
      'Średnia cena zamknięcia z ostatnich 200 sesji – klasyczna linia trendu długoterminowego. Wielu inwestorów uznaje kurs powyżej niej za długoterminowy trend wzrostowy.';

  @override
  String get glossRsi =>
      'Wskaźnik siły względnej: porównuje ostatnie wzrosty z ostatnimi spadkami w skali 0–100. Powyżej 70 akcję często nazywa się wykupioną (szybko rosła), poniżej 30 wyprzedaną – ale silny trend może utrzymać się tam długo.';

  @override
  String get glossVolatility =>
      'Jak mocno kurs waha się z dnia na dzień, w przeliczeniu na rok: 20% oznacza, że w typowym roku porusza się w przedziale około ±20%. Wyższa zmienność to większe ruchy w obie strony.';

  @override
  String get techNote =>
      'Obliczono na podstawie dziennych cen zamknięcia. Sygnały techniczne opisują przeszłość, nie przyszłość.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above z $count pozycji powyżej swojej średniej 200-dniowej';
  }

  @override
  String get watchSignalsTitle => 'Sygnały';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · wyprzedanie';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · wykupienie';
  }

  @override
  String get signalCrossedAbove => 'przebicie w górę średniej 200-dniowej';

  @override
  String get signalCrossedBelow => 'przebicie w dół średniej 200-dniowej';

  @override
  String get signalAlertsTitle => 'Powiadomienia o sygnałach technicznych';

  @override
  String get signalAlertsSubtitle =>
      'Raz dziennie, gdy obserwowana przez ciebie akcja wejdzie w wyprzedanie lub wykupienie (RSI) albo jej kurs przecina średnią 200-dniową.';

  @override
  String get signalAlertsNotification => 'Sygnały techniczne';

  @override
  String get glossaryPageTitle => 'Słowniczek';

  @override
  String get glossaryPageSubtitle =>
      'Proste wyjaśnienia każdej liczby w aplikacji, od P/E po RSI';

  @override
  String get glossarySearchHint => 'Szukaj w słowniczku';

  @override
  String get portfolioCash => 'Gotówka';

  @override
  String get portfolioCashTitle => 'Saldo gotówkowe';

  @override
  String get portfolioCashHint =>
      'Niezainwestowane środki u brokera, według waluty. Wliczane do wartości łącznej i struktury, ale nie do stopy zwrotu.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Kwota ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Ustaw saldo gotówkowe';

  @override
  String get portfolioDividendsByMonth => 'Miesięcznie';

  @override
  String get dividendsLegendReceived => 'Otrzymane';

  @override
  String get dividendsLegendExpected => 'Spodziewane';

  @override
  String get portfolioDividendsExpected => 'Następna spodziewana';

  @override
  String get portfolioDividendsExpectedNote =>
      'Oszacowano na podstawie dat i kwot zapisanych wypłat; spółki mogą je zmienić lub pominąć.';

  @override
  String portfolioDividendAround(String date) {
    return 'około $date';
  }
}
