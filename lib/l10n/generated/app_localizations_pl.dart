// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'Sfotografuj akcję i dowiedz się o niej wszystkiego.';

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
  String get errRecognitionRefused => 'Usługa rozpoznawania nie mogła przetworzyć tego obrazu.';

  @override
  String get errRecognitionTruncated => 'Odpowiedź usługi rozpoznawania została ucięta. Spróbuj ponownie.';

  @override
  String get errRecognitionBadResponse => 'Nieoczekiwana odpowiedź usługi rozpoznawania.';

  @override
  String get errRecognitionEmpty => 'Usługa rozpoznawania zwróciła pustą odpowiedź.';

  @override
  String get errMissingFinnhubKey => 'Dane rynkowe nie są skonfigurowane (brak FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Nie udało się połączyć z usługą danych rynkowych. Sprawdź połączenie z internetem.';

  @override
  String get errMarketRateLimited => 'Zbyt wiele zapytań do usługi danych rynkowych. Odczekaj minutę.';

  @override
  String errMarketHttp(String status) {
    return 'Usługa danych rynkowych zwróciła błąd (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Nieoczekiwana odpowiedź usługi danych rynkowych.';

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
    return 'Naciśnij $shortcut w dowolnym miejscu, aby przywołać StockLens.';
  }

  @override
  String get trayOpen => 'Otwórz StockLens';

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
  String get aiGenerating => 'Przygotowywanie analizy… może to potrwać minutę lub dwie.';

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
  String get errAiNotConfigured => 'Analiza AI nie jest skonfigurowana (brak ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Nie udało się połączyć z usługą AI. Sprawdź połączenie z internetem.';

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
  String get chartUnavailable => 'Historia cen nie jest dostępna w bieżącym źródle danych.';

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
  String get labelOperatingCashFlow => 'Przepływy pieniężne z działalności operacyjnej';

  @override
  String get statementsUnavailable => 'Raportowane sprawozdania finansowe nie są dostępne dla tej akcji.';

  @override
  String get launchAtLogin => 'Uruchamiaj przy logowaniu';

  @override
  String get hotkeyLabel => 'Skrót globalny';

  @override
  String get hotkeyRecordHint => 'Kliknij tutaj, a następnie naciśnij nową kombinację klawiszy';

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
  String get noFavorites => 'Brak ulubionych. Dotknij gwiazdki przy akcji, aby ją dodać.';

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
  String get updateDownloaded => 'Aktualizacja jest gotowa. Uruchom ponownie, aby ją zainstalować.';

  @override
  String get updateNow => 'Aktualizuj';

  @override
  String get restartNow => 'Uruchom ponownie';

  @override
  String get updatesViaStore => 'Aktualizacje są dostarczane automatycznie przez sklep z aplikacjami.';

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
  String get trialExpired => 'Twój bezpłatny okres próbny dobiegł końca. Wybierz plan, aby dalej analizować.';

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
  String get errQuotaExceeded => 'Nie masz już analiz w tym okresie. Zmień plan na wyższy lub kup dodatkowe analizy.';

  @override
  String get errTrialExpired => 'Twój bezpłatny okres próbny dobiegł końca. Wybierz plan, aby kontynuować.';

  @override
  String get errNoPlan => 'Do analizy AI potrzebny jest aktywny plan.';

  @override
  String get viewPlans => 'Zobacz plany';

  @override
  String get usageTitle => 'Wykorzystanie';

  @override
  String get demoPurchaseNote => 'Rozliczenia demo: zakupy na tej platformie są symulowane.';

  @override
  String get mostPopular => 'Najpopularniejszy';

  @override
  String get bestValue => 'Najkorzystniejszy';

  @override
  String get planFeaturesCommon =>
      'Rozpoznawanie zdjęć, dane na żywo, wykresy, ulubione i wszystkie 44 języki są dostępne w każdym planie. Limit dotyczy analiz AI.';

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
  String get aiDepthDeepDesc => 'Więcej wyszukiwań w sieci, porównanie z konkurencją i więcej szczegółów.';

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
  String get aiReaderBeginnerDesc => 'Prosty język; każdy termin fachowy jest wyjaśniony.';

  @override
  String get aiReaderExperiencedDesc => 'Bardziej zwięzły tekst ze standardową terminologią finansową.';

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
}
