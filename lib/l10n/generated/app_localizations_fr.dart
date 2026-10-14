// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
    return 'Appuyez sur $shortcut n’importe où pour ouvrir WhatStock.';
  }

  @override
  String get trayOpen => 'Ouvrir WhatStock';

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
      'Une vue d’ensemble détaillée rédigée par IA : synthèse des actualités récentes, activité, points forts, risques et facteurs cachés, valorisation, perspectives de cours avec des scénarios sous les angles psychologique, sociologique, technique et macroéconomique, et points à surveiller.';

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

  @override
  String get updates => 'Mises à jour';

  @override
  String currentVersion(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdate => 'Installer les mises à jour automatiquement';

  @override
  String get checkForUpdates => 'Rechercher des mises à jour';

  @override
  String get updateChecking => 'Recherche de mises à jour…';

  @override
  String get updateUpToDate => 'Vous disposez de la dernière version.';

  @override
  String updateAvailable(String version) {
    return 'La version $version est disponible.';
  }

  @override
  String get updateDownloading =>
      'Téléchargement de la mise à jour en arrière-plan…';

  @override
  String get updateDownloaded =>
      'La mise à jour est prête. Redémarrez pour l’installer.';

  @override
  String get updateNow => 'Mettre à jour';

  @override
  String get restartNow => 'Redémarrer';

  @override
  String get updatesViaStore =>
      'Les mises à jour arrivent automatiquement via la boutique d’applications.';

  @override
  String get updateCheckFailed => 'Impossible de rechercher des mises à jour.';

  @override
  String get subscription => 'Abonnement';

  @override
  String get planTrial => 'Essai';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Aucun forfait actif';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analyses par mois';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Essai gratuit de $days jours avec $count analyses';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days jours d’essai restants',
      one: '1 jour d’essai restant',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Votre essai gratuit est terminé. Choisissez un forfait pour continuer à analyser.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining analyses sur $total restantes pour cette période';
  }

  @override
  String extraCredits(int count) {
    return '$count analyses supplémentaires';
  }

  @override
  String renewsOn(String date) {
    return 'Renouvellement le $date';
  }

  @override
  String get choosePlan => 'Choisir un forfait';

  @override
  String get currentPlan => 'Forfait actuel';

  @override
  String get subscribe => 'S’abonner';

  @override
  String get perMonth => '/ mois';

  @override
  String get extraPacksTitle =>
      'Besoin de plus ? Achetez des analyses supplémentaires';

  @override
  String get extraPacksHint =>
      'Les analyses supplémentaires n’expirent jamais et sont utilisées après votre quota mensuel.';

  @override
  String get buy => 'Acheter';

  @override
  String get restorePurchases => 'Restaurer les achats';

  @override
  String get manageSubscription => 'Gérer l’abonnement';

  @override
  String get purchaseSuccess => 'Merci ! Votre achat est actif.';

  @override
  String get purchasePending => 'Achat en attente…';

  @override
  String get purchaseFailed => 'L’achat n’a pas pu être finalisé.';

  @override
  String get purchaseCanceled => 'Achat annulé.';

  @override
  String get billingUnavailable =>
      'Les achats ne sont pas encore disponibles sur cette plateforme. Abonnez-vous sur votre téléphone ou votre Mac ; votre forfait fonctionnera sur tous vos appareils.';

  @override
  String get errQuotaExceeded =>
      'Vous n’avez plus d’analyses pour cette période. Passez à un forfait supérieur ou achetez des analyses supplémentaires.';

  @override
  String get errTrialExpired =>
      'Votre essai gratuit est terminé. Choisissez un forfait pour continuer.';

  @override
  String get errNoPlan => 'Un forfait actif est nécessaire pour l’analyse IA.';

  @override
  String get viewPlans => 'Voir les forfaits';

  @override
  String get usageTitle => 'Utilisation';

  @override
  String get demoPurchaseNote =>
      'Facturation de démonstration : les achats sont simulés sur cette plateforme.';

  @override
  String get mostPopular => 'Le plus populaire';

  @override
  String get bestValue => 'Meilleur rapport qualité-prix';

  @override
  String get planFeaturesCommon =>
      'La reconnaissance photo, les données en direct, les graphiques, les favoris et les 120 langues sont inclus dans tous les forfaits. Le quota couvre les analyses IA.';

  @override
  String get searchLanguages => 'Rechercher des langues…';

  @override
  String get noLanguageMatch => 'Aucune langue ne correspond.';

  @override
  String get aiSettings => 'Analyse IA';

  @override
  String get aiLength => 'Longueur';

  @override
  String get aiDepthBrief => 'Brève';

  @override
  String get aiDepthStandard => 'Standard';

  @override
  String get aiDepthDeep => 'Approfondie';

  @override
  String get aiDepthBriefDesc => 'L’essentiel, rapidement.';

  @override
  String get aiDepthStandardDesc => 'Rapport complet avec toutes les sections.';

  @override
  String get aiDepthDeepDesc =>
      'Plus de recherches web, comparaison avec les concurrents et davantage de détails.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Environ $min–$max mots';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'utilise $count analyses',
      one: 'utilise 1 analyse',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Niveau du lecteur';

  @override
  String get aiReaderBeginner => 'Débutant';

  @override
  String get aiReaderExperienced => 'Expérimenté';

  @override
  String get aiReaderBeginnerDesc =>
      'Langage simple ; chaque terme technique est expliqué.';

  @override
  String get aiReaderExperiencedDesc =>
      'Texte plus dense, avec la terminologie financière usuelle.';

  @override
  String get aiCounterArgument => 'Contre-argument le plus solide';

  @override
  String get aiCounterArgumentDesc =>
      'La synthèse se termine toujours par le meilleur argument contre sa propre conclusion.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Jusqu’à $count recherches web par analyse avec votre forfait',
      one: 'Jusqu’à 1 recherche web par analyse avec votre forfait',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Longueur standard selon le forfait : Normal $normal, Pro $pro, Max $max, Ultra $ultra. « Brève » en utilise 2 de moins, « Approfondie » 2 de plus.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'jusqu’à $count recherches web',
      one: 'jusqu’à 1 recherche web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count recherches web par analyse',
      one: '1 recherche web par analyse',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Cette longueur nécessite $needed analyses, mais il ne vous en reste que $left. Choisissez une longueur plus courte dans les Paramètres ou obtenez des analyses supplémentaires.';
  }

  @override
  String get outlookMarketMood => 'Sentiment du marché';

  @override
  String get moodVeryPessimistic => 'Très pessimiste';

  @override
  String get moodPessimistic => 'Pessimiste';

  @override
  String get moodNeutral => 'Neutre';

  @override
  String get moodOptimistic => 'Optimiste';

  @override
  String get moodVeryOptimistic => 'Très optimiste';

  @override
  String get scenarioBull => 'Scénario haussier';

  @override
  String get scenarioBase => 'Scénario central';

  @override
  String get scenarioBear => 'Scénario baissier';

  @override
  String outlookCurrentPrice(String price) {
    return 'Cours actuel : $price';
  }

  @override
  String get outlookKeyLevels => 'Niveaux clés';

  @override
  String get keyLevelSupport => 'Support';

  @override
  String get keyLevelResistance => 'Résistance';

  @override
  String get keyLevelAnchor => 'Ancrage';

  @override
  String get upcomingEvents => 'Événements à venir';

  @override
  String get outlookChartNote =>
      'Fourchettes indicatives ; les probabilités sont des estimations approximatives, pas des prévisions.';

  @override
  String get accountTitle => 'Compte';

  @override
  String get signIn => 'Se connecter';

  @override
  String get signOut => 'Se déconnecter';

  @override
  String get notSignedIn => 'Non connecté';

  @override
  String get accountBenefit =>
      'Connectez-vous pour que votre abonnement fonctionne sur tous vos appareils.';

  @override
  String get accountSyncedNote =>
      'Votre abonnement et vos analyses restantes sont les mêmes sur tous vos appareils.';

  @override
  String get signInTitle => 'Se connecter à WhatStock';

  @override
  String get emailLabel => 'Adresse e-mail';

  @override
  String get continueWithEmail => 'Continuer avec l’e-mail';

  @override
  String codeSentTo(String email) {
    return 'Nous avons envoyé un code à 6 chiffres à $email. Il est valable 10 minutes.';
  }

  @override
  String get codeLabel => 'Code de connexion';

  @override
  String get resendCode => 'Renvoyer un code';

  @override
  String get useDifferentEmail => 'Utiliser une autre adresse e-mail';

  @override
  String get errInvalidCode => 'Le code est incorrect ou a expiré.';

  @override
  String get errInvalidEmail => 'Veuillez saisir une adresse e-mail valide.';

  @override
  String get errSignInFailed =>
      'La connexion a échoué. Vérifiez votre connexion Internet et réessayez.';

  @override
  String get checkoutWaiting =>
      'Finalisez le paiement dans votre navigateur. L’app se mettra à jour automatiquement une fois le paiement effectué.';

  @override
  String get paymentViaStripe =>
      'Paiement sécurisé dans votre navigateur via Stripe. Résiliable à tout moment.';

  @override
  String get paymentViaStore =>
      'Facturé via votre compte App Store ou Google Play. Résiliable à tout moment dans les réglages de votre store.';

  @override
  String get keySpace => 'Espace';

  @override
  String get doubleOptionTitle => 'Double appui sur Option';

  @override
  String get doubleOptionSubtitle =>
      'Appuyer rapidement deux fois sur la touche Option ouvre aussi WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Pour que cela fonctionne aussi dans les autres apps, autorisez WhatStock dans Réglages Système → Confidentialité et sécurité → Surveillance de l’entrée, puis rouvrez l’app.';

  @override
  String get openSystemSettings => 'Ouvrir Réglages Système';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Appuyez sur $shortcut ou deux fois sur Option n’importe où pour ouvrir WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Le plus probable';

  @override
  String get longTermToday => 'Aujourd\'hui';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ans',
      one: '1 an',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range par an';
  }

  @override
  String longTermLikely(String price) {
    return 'le plus probable : $price';
  }

  @override
  String get confidenceLow => 'Confiance faible';

  @override
  String get confidenceMedium => 'Confiance moyenne';

  @override
  String get confidenceHigh => 'Confiance élevée';

  @override
  String get longTermNote =>
      'Les fourchettes à long terme reposent sur les hypothèses indiquées et s\'élargissent avec le temps. Cours hors dividendes. Estimations grossières, pas des prévisions.';

  @override
  String get portfolio => 'Portefeuille';

  @override
  String get portfolioEmpty =>
      'Rien pour l’instant. Ouvrez une action et appuyez sur « Ajouter au portefeuille » pour suivre ce que vous détenez.';

  @override
  String get portfolioLocalNote =>
      'Enregistré uniquement sur cet appareil. Les totaux sont convertis aux cours de référence de la BCE ; les cours peuvent être différés.';

  @override
  String get addToPortfolio => 'Ajouter au portefeuille';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Ajouter $symbol';
  }

  @override
  String get portfolioQuantity => 'Nombre d’actions';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Prix par action ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Date d’achat';

  @override
  String get portfolioAdd => 'Ajouter';

  @override
  String get portfolioInvalidNumber => 'Saisissez un nombre supérieur à zéro.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol a été ajouté au portefeuille.';
  }

  @override
  String get portfolioTotalValue => 'Valeur totale';

  @override
  String get portfolioToday => 'Aujourd’hui';

  @override
  String get portfolioGainLoss => 'Plus/moins-value';

  @override
  String get portfolioInvested => 'Investi';

  @override
  String get portfolioAllocation => 'Répartition';

  @override
  String get portfolioPositions => 'Positions';

  @override
  String portfolioAvgCost(String price) {
    return 'PRU $price';
  }

  @override
  String get portfolioYourPosition => 'Votre position';

  @override
  String get portfolioPurchases => 'Achats';

  @override
  String get portfolioRemove => 'Supprimer';

  @override
  String get portfolioExcluded =>
      'Les positions sans cours ou sans taux de change ne sont pas comptées dans les totaux.';

  @override
  String get priceAlerts => 'Alertes de cours';

  @override
  String get setPriceAlert => 'Créer une alerte de cours';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alerte de cours · $symbol';
  }

  @override
  String get alertKindAbove => 'Passe au-dessus de';

  @override
  String get alertKindBelow => 'Passe sous';

  @override
  String get alertKindMove => 'Varie fortement sur la journée';

  @override
  String alertTargetPrice(String currency) {
    return 'Cours ($currency)';
  }

  @override
  String get alertMovePercent => 'Variation du jour (%)';

  @override
  String get alertAlreadyMet => 'Le cours a déjà franchi ce niveau.';

  @override
  String get alertSave => 'Créer l’alerte';

  @override
  String alertCreated(String symbol) {
    return 'Alerte créée pour $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Aucune alerte pour l’instant. Ouvrez une action et appuyez sur la cloche.';

  @override
  String get alertsNote =>
      'Les alertes sont vérifiées toutes les 5 minutes tant que WhatStock est ouvert. Sur ordinateur, l’app reste active dans la barre des menus ou la zone de notification ; sur téléphone, les alertes arrivent pour l’instant quand l’app est ouverte.';

  @override
  String alertDescAbove(String price) {
    return 'Au-dessus de $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Sous $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Variation du jour ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Déclenchée le $date à $price';
  }

  @override
  String get alertRearm => 'Réactiver';

  @override
  String get alertDelete => 'Supprimer';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol est passé au-dessus de $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol est passé sous $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol a varié de $percent aujourd’hui';
  }

  @override
  String alertHitBody(String price) {
    return 'Cours actuel : $price';
  }

  @override
  String get alertOpen => 'Ouvrir';

  @override
  String get keepInTrayTitle => 'Continuer après la fermeture de la fenêtre';

  @override
  String get keepInTraySubtitle =>
      'WhatStock reste dans la barre des menus ou la zone de notification : le raccourci et les alertes de cours continuent de fonctionner.';

  @override
  String get termsOfUse => 'Conditions d’utilisation';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get subscriptionLegal =>
      'L’abonnement se renouvelle automatiquement chaque mois jusqu’à résiliation. En vous abonnant, vous acceptez les Conditions d’utilisation et la Politique de confidentialité.';

  @override
  String get deleteAccount => 'Supprimer le compte';

  @override
  String get deleteAccountTitle => 'Supprimer votre compte ?';

  @override
  String get deleteAccountBody =>
      'Votre compte et tout ce qui est stocké sur notre serveur (e-mail, quota, utilisation) seront définitivement supprimés ; les analyses non utilisées sont perdues. Un abonnement payé dans le navigateur est résilié immédiatement ; un abonnement App Store ou Google Play doit être résilié dans les réglages de la boutique.';

  @override
  String get deleteLocalData =>
      'Supprimer aussi les données de cet appareil (portefeuille, alertes, favoris, historique, analyses enregistrées)';

  @override
  String get deleteAccountConfirm => 'Supprimer définitivement';

  @override
  String get accountDeleted => 'Votre compte a été supprimé.';

  @override
  String get errDeleteAccount =>
      'Impossible de supprimer le compte. Vérifiez votre connexion et réessayez.';

  @override
  String get aiTrialBriefNote =>
      'Les analyses d’essai sont brèves et réalisées avec un modèle d’IA plus rapide. Avec un forfait, vous profitez de notre IA la plus performante, de davantage de recherches web et des longueurs Standard et Approfondie.';

  @override
  String get billingMonthly => 'Mensuel';

  @override
  String get billingYearly => 'Annuel';

  @override
  String get yearlyDiscount => '2 mois offerts';

  @override
  String get perYear => '/ an';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price par mois';
  }

  @override
  String get subscriptionLegalYearly =>
      'L’abonnement annuel se renouvelle automatiquement chaque année jusqu’à résiliation. En vous abonnant, vous acceptez les Conditions d’utilisation et la Politique de confidentialité.';

  @override
  String get myAnalyses => 'Mes analyses';

  @override
  String get navAlerts => 'Alertes';

  @override
  String get inviteTitle => 'Préversion fermée';

  @override
  String get inviteBody =>
      'WhatStock est pour l’instant accessible uniquement sur invitation. Saisissez le code d’invitation que vous avez reçu.';

  @override
  String get inviteCodeLabel => 'Code d’invitation';

  @override
  String get inviteContinue => 'Continuer';

  @override
  String get inviteInvalid => 'Ce code d’invitation n’est pas valide.';

  @override
  String get inviteExpired =>
      'Cette invitation a expiré. Demandez un nouveau code à la personne qui vous a invité.';

  @override
  String get inviteDeviceLimit =>
      'Ce code d’invitation est déjà utilisé sur le nombre maximal d’appareils.';

  @override
  String get previewConfidential => 'Préversion confidentielle';

  @override
  String get errPreviewDailyLimit =>
      'La limite quotidienne d’analyses de cette préversion est atteinte. Réessayez demain.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'il y a $count heures',
      one: 'il y a 1 heure',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'il y a $count jours',
      one: 'il y a 1 jour',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Mettre à jour cette analyse ?';

  @override
  String staleBody(String age) {
    return 'Elle a été générée $age. Les cours, les actualités et les résultats ont pu changer depuis.';
  }

  @override
  String get staleKeep => 'Afficher la précédente';

  @override
  String get staleRefresh => 'En générer une nouvelle';

  @override
  String seeAll(int count) {
    return 'Tout voir ($count)';
  }

  @override
  String get searchAnalyses => 'Rechercher dans vos analyses';

  @override
  String get deleteAnalysis => 'Supprimer';

  @override
  String analysisDeleted(String symbol) {
    return 'Analyse de $symbol supprimée';
  }

  @override
  String get keyLevelAlertHint =>
      'Appuyez sur un niveau pour recevoir une alerte quand le cours l’atteint.';

  @override
  String get shareAnalysisTitle => 'Partager l’analyse';

  @override
  String get shareAsImage => 'Partager en image';

  @override
  String get shareAsText => 'Partager en texte';

  @override
  String get shareCardFooter => 'Créé avec WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Analyse IA · pas un conseil en investissement';

  @override
  String get referralTitle => 'Inviter des amis';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analyses supplémentaires',
      one: '1 analyse supplémentaire',
    );
    return 'Partagez votre code. Votre ami reçoit immédiatement $_temp0, et vous recevez la même chose après sa première analyse.';
  }

  @override
  String get referralYourCode => 'Votre code';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Invités : $invited · Récompensés : $rewarded';
  }

  @override
  String get referralHaveCode => 'Vous avez le code d’un ami ?';

  @override
  String get referralRedeem => 'Utiliser';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analyses supplémentaires ajoutées. Bienvenue !',
      one: '1 analyse supplémentaire ajoutée. Bienvenue !',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Ce code n’existe pas. Vérifiez-le et réessayez.';

  @override
  String get referralErrOwn => 'Vous ne pouvez pas utiliser votre propre code.';

  @override
  String get referralErrAlready => 'Vous avez déjà utilisé le code d’un ami.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analyses supplémentaires',
      one: '1 analyse supplémentaire',
    );
    return 'J’analyse des actions avec WhatStock : photographiez une action et l’IA vous l’explique. Avec mon code $code, vous obtenez $_temp0.';
  }

  @override
  String get referralCopied => 'Code copié';

  @override
  String get onboardTitle1 => 'Photographiez une action';

  @override
  String get onboardBody1 =>
      'Un écran d’application de courtage, un journal ou un logo d’entreprise suffit : WhatStock reconnaît l’action et affiche son cours, son graphique et ses chiffres clés.';

  @override
  String get onboardTitle2 => 'Comprenez-la en quelques minutes';

  @override
  String get onboardBody2 =>
      'L’analyse IA vous explique ce qui fait bouger l’action, ses risques, sa valorisation et trois scénarios sur l’évolution possible de son cours, avec les sources et dans votre langue.';

  @override
  String get onboardTitle3 => 'Restez toujours informé';

  @override
  String get onboardBody3 =>
      'Vos favoris, votre portefeuille et vos alertes de cours vous tiennent informé. Vos analyses restent sur votre appareil, prêtes à être rouvertes.';

  @override
  String get onboardNext => 'Suivant';

  @override
  String get onboardStart => 'Commencer';

  @override
  String get onboardSkip => 'Passer';

  @override
  String changesTitle(String date) {
    return 'Depuis l’analyse précédente ($date)';
  }

  @override
  String get changesPrice => 'Cours';

  @override
  String get changesNoMajor =>
      'Les perspectives n’ont pas changé de manière significative.';

  @override
  String get changesPreviousSummary => 'Résumé précédent';

  @override
  String get telemetryTitle => 'Aidez-nous à améliorer WhatStock';

  @override
  String get telemetryBody =>
      'Partagez des statistiques d\'utilisation anonymes et des rapports de plantage : les fonctionnalités utilisées et ce qui n\'a pas fonctionné. Jamais vos actions, analyses ou données personnelles. Vous pouvez modifier ce choix à tout moment dans les Paramètres.';

  @override
  String get telemetryAllow => 'Autoriser';

  @override
  String get telemetryDecline => 'Non merci';

  @override
  String get telemetrySetting =>
      'Statistiques anonymes et rapports de plantage';

  @override
  String get telemetrySettingHint =>
      'La fréquence d\'utilisation des fonctionnalités et les rapports d\'erreurs, sans données personnelles ni contenu de vos recherches et analyses.';

  @override
  String get askButton => 'Poser une question sur cette analyse';

  @override
  String askTitle(String symbol) {
    return 'Questions sur $symbol';
  }

  @override
  String get askIntro =>
      'Posez toutes vos questions sur l’analyse : ce que signifie un risque, ce qui pourrait changer les perspectives, comment un chiffre a été obtenu. Les réponses se fondent sur cette analyse et ne constituent pas un conseil en investissement.';

  @override
  String get askHint => 'Posez une question…';

  @override
  String get askSend => 'Envoyer';

  @override
  String get askThinking => 'Réflexion en cours…';

  @override
  String get askSuggest1 => 'Quel est le plus grand risque ?';

  @override
  String get askSuggest2 => 'Qu’est-ce qui changerait les perspectives ?';

  @override
  String get askSuggest3 => 'Explique-moi simplement';

  @override
  String get askMaxReached =>
      'C’était la dernière question pour cette analyse. Créez une nouvelle analyse pour en poser d’autres.';

  @override
  String get errAskLimit =>
      'Vous avez atteint la limite de questions pour aujourd’hui. Réessayez demain.';

  @override
  String get eventTomorrow => 'Demain';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'dans $days jours',
      one: 'dans 1 jour',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Résultats trimestriels';

  @override
  String get eventBeforeOpen => 'avant l’ouverture';

  @override
  String get eventAfterClose => 'après la clôture';

  @override
  String eventEpsEstimate(String value) {
    return 'BPA estimé : $value';
  }

  @override
  String get eventFromAnalysis => 'Issu de votre analyse';

  @override
  String get eventsHint =>
      'Dates de résultats de vos favoris et des actions de votre portefeuille pour les 90 prochains jours, ainsi que les événements datés repérés par vos analyses.';

  @override
  String get eventsEmpty =>
      'Aucun événement daté dans les 90 prochains jours. Ajoutez des favoris ou des actions à votre portefeuille pour voir ici leurs dates de résultats.';

  @override
  String get compareTitle => 'Comparer';

  @override
  String get compareAdd => 'Ajouter une action';

  @override
  String get compareRemove => 'Retirer';

  @override
  String get compareTickerHint => 'Symbole, p. ex. MSFT';

  @override
  String get compareHint =>
      'Chiffres clés côte à côte ; la meilleure valeur de chaque ligne est mise en évidence. Les montants sont exprimés dans la devise de chaque action.';

  @override
  String get compareNoAnalysis => 'Aucune analyse pour l\'instant';
}
