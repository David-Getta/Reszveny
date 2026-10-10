// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline =>
      'Photographiez une action et apprenez tout sur elle.';

  @override
  String get homeHint =>
      'Un certificat d\'actions, l\'écran d\'une application de courtage, un journal ou le logo d\'une entreprise : tout ce qui permet d\'identifier une action.';

  @override
  String get takePhoto => 'Prendre une photo';

  @override
  String get chooseFromGallery => 'Choisir dans la galerie';

  @override
  String get chooseImage => 'Choisir une image';

  @override
  String get enterTickerManually => 'Saisir le ticker manuellement';

  @override
  String get tickerInputLabel => 'Symbole (ticker)';

  @override
  String get tickerInputHint => 'ex. AAPL';

  @override
  String get lookUp => 'Rechercher';

  @override
  String demoModeBanner(String symbols) {
    return 'Mode démo : aucune clé de données de marché configurée. Des données d\'exemple sont disponibles pour : $symbols.';
  }

  @override
  String get recognizing => 'Analyse de l\'image…';

  @override
  String get loadingData => 'Chargement des données…';

  @override
  String get noCandidatesTitle => 'Aucune action reconnue';

  @override
  String get noCandidatesBody =>
      'Nous n\'avons pas pu identifier d\'action sur cette image. Essayez une photo plus nette ou saisissez le ticker manuellement.';

  @override
  String get whatWeSaw => 'Ce que nous avons vu';

  @override
  String get chooseCandidateTitle => 'De quelle action s\'agit-il ?';

  @override
  String confidencePercent(int percent) {
    return '$percent % de confiance';
  }

  @override
  String get settings => 'Paramètres';

  @override
  String get language => 'Langue';

  @override
  String get systemLanguage => 'Langue du système';

  @override
  String get about => 'À propos';

  @override
  String get disclaimer =>
      'Cette application fournit uniquement des informations et ne constitue pas un conseil en investissement. Les données peuvent être différées ou inexactes.';

  @override
  String dataSource(String source) {
    return 'Source des données : $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Reconnaissance : $source';
  }

  @override
  String get retry => 'Réessayer';

  @override
  String get cancel => 'Annuler';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Fermer';

  @override
  String get errorGeneric => 'Une erreur s\'est produite.';

  @override
  String get errorSectionUnavailable =>
      'Cette section n\'a pas pu être chargée.';

  @override
  String get notAvailable => 'n/d';

  @override
  String get sectionIdentity => 'Identification';

  @override
  String get sectionPrice => 'Cours';

  @override
  String get sectionValuation => 'Valorisation';

  @override
  String get sectionFinancials => 'Données financières';

  @override
  String get sectionDividend => 'Dividende';

  @override
  String get sectionProfile => 'Profil de l\'entreprise';

  @override
  String get sectionAnalysts => 'Avis des analystes';

  @override
  String get sectionNews => 'Actualités';

  @override
  String get sectionRecognition => 'Détails de la reconnaissance';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Place boursière';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Devise';

  @override
  String get labelCountry => 'Pays';

  @override
  String get labelIndustry => 'Industrie';

  @override
  String get labelSector => 'Secteur';

  @override
  String get labelWebsite => 'Site web';

  @override
  String get labelIpoDate => 'Date d\'IPO';

  @override
  String get labelMarketCap => 'Capitalisation boursière';

  @override
  String get labelSharesOutstanding => 'Actions en circulation';

  @override
  String get labelEmployees => 'Employés';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Siège social';

  @override
  String get labelDescription => 'Description';

  @override
  String get labelLastPrice => 'Dernier cours';

  @override
  String get labelChange => 'Variation';

  @override
  String get labelOpen => 'Ouverture';

  @override
  String get labelDayHigh => 'Plus haut du jour';

  @override
  String get labelDayLow => 'Plus bas du jour';

  @override
  String get labelPreviousClose => 'Clôture précédente';

  @override
  String get labelWeek52High => 'Plus haut sur 52 semaines';

  @override
  String get labelWeek52Low => 'Plus bas sur 52 semaines';

  @override
  String get labelAverageVolume10d => 'Volume moyen (10 jours)';

  @override
  String updatedAt(String time) {
    return 'Mis à jour $time';
  }

  @override
  String get labelPeTrailing => 'P/E (PER historique)';

  @override
  String get labelPeForward => 'P/E (PER prévisionnel)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / flux de trésorerie disponible';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Bêta';

  @override
  String get labelRevenueTtm => 'Chiffre d\'affaires (TTM)';

  @override
  String get labelNetIncomeTtm => 'Résultat net (TTM)';

  @override
  String get labelGrossMargin => 'Marge brute';

  @override
  String get labelOperatingMargin => 'Marge opérationnelle';

  @override
  String get labelNetMargin => 'Marge nette';

  @override
  String get labelRoe => 'Rentabilité des fonds propres (ROE)';

  @override
  String get labelRoa => 'Rentabilité des actifs (ROA)';

  @override
  String get labelDebtToEquity => 'Dette / fonds propres';

  @override
  String get labelCurrentRatio => 'Ratio de liquidité générale';

  @override
  String get labelRevenueGrowth => 'Croissance du chiffre d\'affaires (YoY)';

  @override
  String get labelEpsGrowth => 'Croissance de l\'EPS (YoY)';

  @override
  String get labelDividendYield => 'Rendement du dividende';

  @override
  String get labelDividendPerShare => 'Dividende par action';

  @override
  String get labelPayoutRatio => 'Taux de distribution';

  @override
  String get labelConsensus => 'Consensus';

  @override
  String get ratingStrongBuy => 'Achat fort';

  @override
  String get ratingBuy => 'Acheter';

  @override
  String get ratingHold => 'Conserver';

  @override
  String get ratingSell => 'Vendre';

  @override
  String get ratingStrongSell => 'Vente forte';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analystes',
      one: '1 analyste',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Période : $period';
  }

  @override
  String get noNews => 'Aucune actualité récente.';

  @override
  String get openArticle => 'Ouvrir l\'article';

  @override
  String get openLinkFailed => 'Impossible d\'ouvrir le lien.';

  @override
  String get recognitionSummary => 'Résumé';

  @override
  String get recognitionEvidence => 'Pourquoi nous le pensons';

  @override
  String get recognitionRawText => 'Texte lu sur l\'image';

  @override
  String get errMissingAnthropicKey =>
      'La reconnaissance d\'image n\'est pas configurée (ANTHROPIC_API_KEY manquante). Saisissez le ticker manuellement.';

  @override
  String get errRecognitionUnreachable =>
      'Impossible de joindre le service de reconnaissance. Vérifiez votre connexion internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'Le service de reconnaissance a renvoyé une erreur (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Le service de reconnaissance n\'a pas pu traiter cette image.';

  @override
  String get errRecognitionTruncated =>
      'La réponse de la reconnaissance a été tronquée. Veuillez réessayer.';

  @override
  String get errRecognitionBadResponse =>
      'Réponse inattendue du service de reconnaissance.';

  @override
  String get errRecognitionEmpty =>
      'Le service de reconnaissance a renvoyé une réponse vide.';

  @override
  String get errMissingFinnhubKey =>
      'Les données de marché ne sont pas configurées (FINNHUB_API_KEY manquante).';

  @override
  String get errMarketUnreachable =>
      'Impossible de joindre le service de données de marché. Vérifiez votre connexion internet.';

  @override
  String get errMarketRateLimited =>
      'Trop de requêtes vers le service de données de marché. Veuillez patienter une minute.';

  @override
  String errMarketHttp(String status) {
    return 'Le service de données de marché a renvoyé une erreur (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Réponse inattendue du service de données de marché.';

  @override
  String errNoQuote(String symbol) {
    return 'Aucune donnée de cours trouvée pour $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Aucun profil d\'entreprise trouvé pour $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Le mode démo ne prend en charge que $symbols. Ajoutez une FINNHUB_API_KEY pour des données en direct.';
  }

  @override
  String errUnknown(String detail) {
    return 'Une erreur s\'est produite : $detail';
  }

  @override
  String get newSearch => 'Nouvelle recherche';

  @override
  String get recentSearches => 'Récentes';

  @override
  String get noRecentSearches => 'Aucune recherche récente pour le moment.';

  @override
  String get clearRecent => 'Effacer les recherches récentes';

  @override
  String get greeting => 'Quelle action regardons-nous ?';

  @override
  String get searchHint => 'Ticker ou nom de l’entreprise';

  @override
  String get attachImage => 'Joindre une image';

  @override
  String get searchResultsTitle => 'Résultats de la recherche';

  @override
  String errNoResults(String query) {
    return 'Aucune action trouvée pour « $query ».';
  }

  @override
  String get quickBarHint => 'Saisissez un ticker ou le nom d’une entreprise…';

  @override
  String get openFullWindow => 'Ouvrir la fenêtre';

  @override
  String hotkeyHint(String shortcut) {
    return 'Appuyez sur $shortcut n’importe où pour ouvrir StockLens.';
  }

  @override
  String get trayOpen => 'Ouvrir StockLens';

  @override
  String get trayQuickSearch => 'Recherche rapide';

  @override
  String get trayQuit => 'Quitter';

  @override
  String get appearance => 'Apparence';

  @override
  String get themeSystem => 'Système';

  @override
  String get themeDark => 'Sombre';

  @override
  String get themeLight => 'Clair';

  @override
  String get back => 'Retour';

  @override
  String get aiSectionTitle => 'Analyse IA';

  @override
  String get aiIntro =>
      'Une vue d’ensemble détaillée rédigée par IA : synthèse des actualités récentes, activité, points forts, risques et facteurs cachés, valorisation et points à surveiller.';

  @override
  String get aiGenerate => 'Générer l’analyse';

  @override
  String get aiRegenerate => 'Régénérer';

  @override
  String get aiGenerating =>
      'Préparation de l’analyse… cela peut prendre une à deux minutes.';

  @override
  String get aiSources => 'Sources';

  @override
  String aiGeneratedAt(String time) {
    return 'Générée $time';
  }

  @override
  String get aiDisclaimer =>
      'Analyse générée par IA à partir de données publiques et d’actualités récentes. Elle peut contenir des erreurs ou être obsolète et ne constitue pas un conseil en investissement.';

  @override
  String get errAiNotConfigured =>
      'L’analyse IA n’est pas configurée (ANTHROPIC_API_KEY manquante).';

  @override
  String get errAiUnreachable =>
      'Impossible de joindre le service d’IA. Vérifiez votre connexion internet.';

  @override
  String errAiHttp(String status) {
    return 'Le service d’IA a renvoyé une erreur (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Le service d’IA a refusé d’analyser cette action.';

  @override
  String get errAiBadResponse => 'Réponse inattendue du service d’IA.';

  @override
  String get sectionChart => 'Graphique du cours';

  @override
  String get rangeOneWeek => '1S';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1A';

  @override
  String get rangeFiveYears => '5A';

  @override
  String get chartUnavailable =>
      'L’historique des cours n’est pas disponible auprès de la source de données actuelle.';

  @override
  String get sectionStatements => 'États financiers (annuels)';

  @override
  String get labelFiscalYear => 'Exercice fiscal';

  @override
  String get labelRevenue => 'Chiffre d’affaires';

  @override
  String get labelNetIncome => 'Résultat net';

  @override
  String get labelTotalAssets => 'Total de l’actif';

  @override
  String get labelTotalLiabilities => 'Total du passif';

  @override
  String get labelEquity => 'Fonds propres';

  @override
  String get labelOperatingCashFlow => 'Flux de trésorerie d’exploitation';

  @override
  String get statementsUnavailable =>
      'Aucun état financier publié n’est disponible pour cette action.';

  @override
  String get launchAtLogin => 'Lancer à l’ouverture de session';

  @override
  String get hotkeyLabel => 'Raccourci global';

  @override
  String get hotkeyRecordHint =>
      'Cliquez ici, puis appuyez sur la nouvelle combinaison de touches';

  @override
  String get hotkeyReset => 'Rétablir la valeur par défaut';

  @override
  String get pasteImage => 'Coller l’image du presse-papiers';

  @override
  String get errClipboardNoImage =>
      'Le presse-papiers ne contient aucune image.';

  @override
  String get favorites => 'Favoris';

  @override
  String get addToFavorites => 'Ajouter aux favoris';

  @override
  String get removeFromFavorites => 'Retirer des favoris';

  @override
  String get noFavorites =>
      'Aucun favori pour l’instant. Appuyez sur l’étoile d’une action pour l’ajouter.';

  @override
  String get displayCurrency => 'Devise d’affichage';

  @override
  String get displayCurrencyNone => 'Devise de l’action uniquement';

  @override
  String labelConverted(String currency) {
    return '≈ en $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Taux : 1 $from = $rate $to (BCE, $date)';
  }
}
