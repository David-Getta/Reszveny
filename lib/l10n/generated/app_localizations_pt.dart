// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Fotografe uma ação e saiba tudo sobre ela.';

  @override
  String get homeHint =>
      'Um certificado de ações, a imagem de uma app de corretora, um jornal ou o logótipo de uma empresa: qualquer coisa que identifique uma ação.';

  @override
  String get takePhoto => 'Tirar uma foto';

  @override
  String get chooseFromGallery => 'Escolher da galeria';

  @override
  String get chooseImage => 'Escolher uma imagem';

  @override
  String get enterTickerManually => 'Introduzir o ticker manualmente';

  @override
  String get tickerInputLabel => 'Símbolo (ticker)';

  @override
  String get tickerInputHint => 'ex.: AAPL';

  @override
  String get lookUp => 'Pesquisar';

  @override
  String demoModeBanner(String symbols) {
    return 'Modo demo: nenhuma chave de dados de mercado configurada. Há dados de exemplo disponíveis para: $symbols.';
  }

  @override
  String get recognizing => 'A analisar a imagem…';

  @override
  String get loadingData => 'A carregar dados…';

  @override
  String get noCandidatesTitle => 'Nenhuma ação reconhecida';

  @override
  String get noCandidatesBody =>
      'Não foi possível identificar uma ação nesta imagem. Tente uma foto mais nítida ou introduza o ticker manualmente.';

  @override
  String get whatWeSaw => 'O que vimos';

  @override
  String get chooseCandidateTitle => 'A que ação se refere?';

  @override
  String confidencePercent(int percent) {
    return '$percent% de confiança';
  }

  @override
  String get settings => 'Configurações';

  @override
  String get language => 'Idioma';

  @override
  String get systemLanguage => 'Padrão do sistema';

  @override
  String get about => 'Sobre';

  @override
  String get disclaimer =>
      'Esta app fornece apenas informação e não constitui aconselhamento de investimento. Os dados podem estar atrasados ou ser imprecisos.';

  @override
  String dataSource(String source) {
    return 'Fonte de dados: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Reconhecimento: $source';
  }

  @override
  String get retry => 'Tentar novamente';

  @override
  String get cancel => 'Cancelar';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Fechar';

  @override
  String get errorGeneric => 'Ocorreu um erro.';

  @override
  String get errorSectionUnavailable =>
      'Não foi possível carregar esta secção.';

  @override
  String get notAvailable => 'n/d';

  @override
  String get sectionIdentity => 'Identificação';

  @override
  String get sectionPrice => 'Preço';

  @override
  String get sectionValuation => 'Avaliação';

  @override
  String get sectionFinancials => 'Dados financeiros';

  @override
  String get sectionDividend => 'Dividendo';

  @override
  String get sectionProfile => 'Perfil da empresa';

  @override
  String get sectionAnalysts => 'Recomendações de analistas';

  @override
  String get sectionNews => 'Notícias';

  @override
  String get sectionRecognition => 'Detalhes do reconhecimento';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Bolsa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Moeda';

  @override
  String get labelCountry => 'País';

  @override
  String get labelIndustry => 'Indústria';

  @override
  String get labelSector => 'Setor';

  @override
  String get labelWebsite => 'Site';

  @override
  String get labelIpoDate => 'Data do IPO';

  @override
  String get labelMarketCap => 'Capitalização de mercado';

  @override
  String get labelSharesOutstanding => 'Ações em circulação';

  @override
  String get labelEmployees => 'Funcionários';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Sede';

  @override
  String get labelDescription => 'Descrição';

  @override
  String get labelLastPrice => 'Último preço';

  @override
  String get labelChange => 'Variação';

  @override
  String get labelOpen => 'Abertura';

  @override
  String get labelDayHigh => 'Máximo do dia';

  @override
  String get labelDayLow => 'Mínimo do dia';

  @override
  String get labelPreviousClose => 'Fecho anterior';

  @override
  String get labelWeek52High => 'Máximo de 52 semanas';

  @override
  String get labelWeek52Low => 'Mínimo de 52 semanas';

  @override
  String get labelAverageVolume10d => 'Volume médio (10 dias)';

  @override
  String updatedAt(String time) {
    return 'Atualizado $time';
  }

  @override
  String get labelPeTrailing => 'P/E (histórico)';

  @override
  String get labelPeForward => 'P/E (previsto)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / fluxo de caixa livre';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Receita (TTM)';

  @override
  String get labelNetIncomeTtm => 'Lucro líquido (TTM)';

  @override
  String get labelGrossMargin => 'Margem bruta';

  @override
  String get labelOperatingMargin => 'Margem operacional';

  @override
  String get labelNetMargin => 'Margem líquida';

  @override
  String get labelRoe => 'Rentabilidade do capital próprio (ROE)';

  @override
  String get labelRoa => 'Rentabilidade dos ativos (ROA)';

  @override
  String get labelDebtToEquity => 'Dívida / capital próprio';

  @override
  String get labelCurrentRatio => 'Liquidez corrente';

  @override
  String get labelRevenueGrowth => 'Crescimento da receita (YoY)';

  @override
  String get labelEpsGrowth => 'Crescimento do EPS (YoY)';

  @override
  String get labelDividendYield => 'Rendimento do dividendo';

  @override
  String get labelDividendPerShare => 'Dividendo por ação';

  @override
  String get labelPayoutRatio => 'Taxa de distribuição (payout)';

  @override
  String get labelConsensus => 'Consenso';

  @override
  String get ratingStrongBuy => 'Compra forte';

  @override
  String get ratingBuy => 'Comprar';

  @override
  String get ratingHold => 'Manter';

  @override
  String get ratingSell => 'Vender';

  @override
  String get ratingStrongSell => 'Venda forte';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analistas',
      one: '1 analista',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Período: $period';
  }

  @override
  String get noNews => 'Sem notícias recentes.';

  @override
  String get openArticle => 'Abrir artigo';

  @override
  String get openLinkFailed => 'Não foi possível abrir o link.';

  @override
  String get recognitionSummary => 'Resumo';

  @override
  String get recognitionEvidence => 'Porque pensamos isso';

  @override
  String get recognitionRawText => 'Texto lido da imagem';

  @override
  String get errMissingAnthropicKey =>
      'O reconhecimento de imagens não está configurado (falta ANTHROPIC_API_KEY). Introduza o ticker manualmente.';

  @override
  String get errRecognitionUnreachable =>
      'Não foi possível contactar o serviço de reconhecimento. Verifique a sua conexão à internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'O serviço de reconhecimento devolveu um erro (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'O serviço de reconhecimento não conseguiu processar esta imagem.';

  @override
  String get errRecognitionTruncated =>
      'A resposta do reconhecimento foi interrompida. Tente novamente.';

  @override
  String get errRecognitionBadResponse =>
      'Resposta inesperada do serviço de reconhecimento.';

  @override
  String get errRecognitionEmpty =>
      'O serviço de reconhecimento devolveu uma resposta vazia.';

  @override
  String get errMissingFinnhubKey =>
      'Os dados de mercado não estão configurados (falta FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Não foi possível contactar o serviço de dados de mercado. Verifique a sua conexão à internet.';

  @override
  String get errMarketRateLimited =>
      'Demasiados pedidos ao serviço de dados de mercado. Aguarde um minuto.';

  @override
  String errMarketHttp(String status) {
    return 'O serviço de dados de mercado devolveu um erro (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Resposta inesperada do serviço de dados de mercado.';

  @override
  String errNoQuote(String symbol) {
    return 'Não foram encontrados dados de preço para $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Não foi encontrado o perfil da empresa para $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'O modo demo só suporta $symbols. Adicione uma FINNHUB_API_KEY para obter dados em tempo real.';
  }

  @override
  String errUnknown(String detail) {
    return 'Ocorreu um erro: $detail';
  }

  @override
  String get newSearch => 'Nova pesquisa';

  @override
  String get recentSearches => 'Recentes';

  @override
  String get noRecentSearches => 'Ainda não há pesquisas recentes.';

  @override
  String get clearRecent => 'Limpar recentes';

  @override
  String get greeting => 'Que ação vamos ver?';

  @override
  String get searchHint => 'Ticker ou nome da empresa';

  @override
  String get attachImage => 'Anexar uma imagem';

  @override
  String get searchResultsTitle => 'Resultados da pesquisa';

  @override
  String errNoResults(String query) {
    return 'Nenhuma ação encontrada para “$query”.';
  }

  @override
  String get quickBarHint => 'Introduza um ticker ou o nome de uma empresa…';

  @override
  String get openFullWindow => 'Abrir janela';

  @override
  String hotkeyHint(String shortcut) {
    return 'Pressione $shortcut em qualquer lugar para abrir o WhatStock.';
  }

  @override
  String get trayOpen => 'Abrir o WhatStock';

  @override
  String get trayQuickSearch => 'Pesquisa rápida';

  @override
  String get trayQuit => 'Sair';

  @override
  String get appearance => 'Aparência';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeDark => 'Escuro';

  @override
  String get themeLight => 'Claro';

  @override
  String get back => 'Voltar';

  @override
  String get aiSectionTitle => 'Análise com IA';

  @override
  String get aiIntro =>
      'Uma visão geral detalhada escrita por IA: resumo das notícias recentes, o negócio, pontos fortes, riscos e fatores ocultos, avaliação, uma perspectiva de preço com cenários sob ângulos psicológicos, sociológicos, técnicos e macroeconômicos, e o que acompanhar.';

  @override
  String get aiGenerate => 'Gerar análise';

  @override
  String get aiRegenerate => 'Gerar novamente';

  @override
  String get aiGenerating =>
      'Preparando a análise… pode demorar um ou dois minutos.';

  @override
  String get aiSources => 'Fontes';

  @override
  String aiGeneratedAt(String time) {
    return 'Gerado $time';
  }

  @override
  String get aiDisclaimer =>
      'Análise gerada por IA com base em dados públicos e notícias recentes. Pode conter erros ou estar desatualizada e não constitui aconselhamento de investimento.';

  @override
  String get errAiNotConfigured =>
      'A análise com IA não está configurada (falta ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Não foi possível contactar o serviço de IA. Verifique a sua conexão à internet.';

  @override
  String errAiHttp(String status) {
    return 'O serviço de IA devolveu um erro (HTTP $status).';
  }

  @override
  String get errAiRefused => 'O serviço de IA recusou analisar esta ação.';

  @override
  String get errAiBadResponse => 'Resposta inesperada do serviço de IA.';

  @override
  String get sectionChart => 'Gráfico de preços';

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
      'O histórico de preços não está disponível na fonte de dados atual.';

  @override
  String get sectionStatements => 'Demonstrações financeiras (anuais)';

  @override
  String get labelFiscalYear => 'Ano fiscal';

  @override
  String get labelRevenue => 'Receita';

  @override
  String get labelNetIncome => 'Lucro líquido';

  @override
  String get labelTotalAssets => 'Ativo total';

  @override
  String get labelTotalLiabilities => 'Passivo total';

  @override
  String get labelEquity => 'Capital próprio';

  @override
  String get labelOperatingCashFlow => 'Fluxo de caixa operacional';

  @override
  String get statementsUnavailable =>
      'Não há demonstrações financeiras publicadas disponíveis para esta ação.';

  @override
  String get launchAtLogin => 'Abrir ao iniciar sessão';

  @override
  String get hotkeyLabel => 'Atalho global';

  @override
  String get hotkeyRecordHint =>
      'Clique aqui e, em seguida, pressione a nova combinação de teclas';

  @override
  String get hotkeyReset => 'Restaurar predefinição';

  @override
  String get pasteImage => 'Colar imagem da área de transferência';

  @override
  String get errClipboardNoImage =>
      'Não há nenhuma imagem na área de transferência.';

  @override
  String get favorites => 'Favoritos';

  @override
  String get addToFavorites => 'Adicionar aos favoritos';

  @override
  String get removeFromFavorites => 'Remover dos favoritos';

  @override
  String get noFavorites =>
      'Ainda não há favoritos. Toque na estrela de uma ação para a adicionar.';

  @override
  String get displayCurrency => 'Moeda de exibição';

  @override
  String get displayCurrencyNone => 'Apenas a moeda da própria ação';

  @override
  String labelConverted(String currency) {
    return '≈ em $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Câmbio: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Atualizações';

  @override
  String currentVersion(String version) {
    return 'Versão $version';
  }

  @override
  String get autoUpdate => 'Instalar atualizações automaticamente';

  @override
  String get checkForUpdates => 'Procurar atualizações';

  @override
  String get updateChecking => 'A procurar atualizações…';

  @override
  String get updateUpToDate => 'Está na versão mais recente.';

  @override
  String updateAvailable(String version) {
    return 'A versão $version está disponível.';
  }

  @override
  String get updateDownloading =>
      'A transferir a atualização em segundo plano…';

  @override
  String get updateDownloaded =>
      'A atualização está pronta. Reinicie para a instalar.';

  @override
  String get updateNow => 'Atualizar';

  @override
  String get restartNow => 'Reiniciar';

  @override
  String get updatesViaStore =>
      'As atualizações chegam automaticamente através da loja de aplicações.';

  @override
  String get updateCheckFailed => 'Não foi possível procurar atualizações.';

  @override
  String get subscription => 'Subscrição';

  @override
  String get planTrial => 'Teste';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Sem plano ativo';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count análises por mês';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Teste gratuito de $days dias com $count análises';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Faltam $days dias de teste',
      one: 'Falta 1 dia de teste',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'O seu teste gratuito terminou. Escolha um plano para continuar a analisar.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Restam $remaining de $total análises neste período';
  }

  @override
  String extraCredits(int count) {
    return '$count análises extra';
  }

  @override
  String renewsOn(String date) {
    return 'Renova a $date';
  }

  @override
  String get choosePlan => 'Escolha um plano';

  @override
  String get currentPlan => 'Plano atual';

  @override
  String get subscribe => 'Subscrever';

  @override
  String get perMonth => '/ mês';

  @override
  String get extraPacksTitle => 'Precisa de mais? Compre análises extra';

  @override
  String get extraPacksHint =>
      'As análises extra nunca expiram e são usadas depois da sua quota mensal.';

  @override
  String get buy => 'Comprar';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get manageSubscription => 'Gerir subscrição';

  @override
  String get purchaseSuccess => 'Obrigado! A sua compra está ativa.';

  @override
  String get purchasePending => 'Compra pendente…';

  @override
  String get purchaseFailed => 'Não foi possível concluir a compra.';

  @override
  String get purchaseCanceled => 'Compra cancelada.';

  @override
  String get billingUnavailable =>
      'As compras ainda não estão disponíveis nesta plataforma. Subscreva no seu telemóvel ou Mac; o seu plano funcionará em todos os dispositivos.';

  @override
  String get errQuotaExceeded =>
      'Não lhe restam análises neste período. Atualize o seu plano ou compre análises extra.';

  @override
  String get errTrialExpired =>
      'O seu teste gratuito terminou. Escolha um plano para continuar.';

  @override
  String get errNoPlan => 'É necessário um plano ativo para a análise com IA.';

  @override
  String get viewPlans => 'Ver planos';

  @override
  String get usageTitle => 'Utilização';

  @override
  String get demoPurchaseNote =>
      'Faturação de demonstração: as compras são simuladas nesta plataforma.';

  @override
  String get mostPopular => 'Mais popular';

  @override
  String get bestValue => 'Melhor valor';

  @override
  String get planFeaturesCommon =>
      'O reconhecimento de fotos, os dados em tempo real, os gráficos, os favoritos e os 120 idiomas estão incluídos em todos os planos. A quota cobre as análises com IA.';

  @override
  String get searchLanguages => 'Pesquisar idiomas…';

  @override
  String get noLanguageMatch => 'Nenhum idioma corresponde.';

  @override
  String get aiSettings => 'Análise com IA';

  @override
  String get aiLength => 'Extensão';

  @override
  String get aiDepthBrief => 'Breve';

  @override
  String get aiDepthStandard => 'Padrão';

  @override
  String get aiDepthDeep => 'Detalhada';

  @override
  String get aiDepthBriefDesc => 'O essencial, de forma rápida.';

  @override
  String get aiDepthStandardDesc => 'Relatório completo com todas as secções.';

  @override
  String get aiDepthDeepDesc =>
      'Mais pesquisas na web, comparação com concorrentes e maior detalhe.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Cerca de $min–$max palavras';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'usa $count análises',
      one: 'usa 1 análise',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Nível do leitor';

  @override
  String get aiReaderBeginner => 'Iniciante';

  @override
  String get aiReaderExperienced => 'Experiente';

  @override
  String get aiReaderBeginnerDesc =>
      'Linguagem simples; cada termo técnico é explicado.';

  @override
  String get aiReaderExperiencedDesc =>
      'Texto mais denso, com terminologia financeira padrão.';

  @override
  String get aiCounterArgument => 'Contra-argumento mais forte';

  @override
  String get aiCounterArgumentDesc =>
      'O resumo termina sempre com o melhor argumento contra a sua própria conclusão.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Até $count pesquisas na web por análise com o seu plano',
      one: 'Até 1 pesquisa na web por análise com o seu plano',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Extensão padrão por plano: Normal $normal, Pro $pro, Max $max, Ultra $ultra. «Breve» usa menos 2 e «Detalhada» mais 2.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'até $count pesquisas na web',
      one: 'até 1 pesquisa na web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pesquisas na web por análise',
      one: '1 pesquisa na web por análise',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Esta extensão requer $needed análises, mas só lhe restam $left. Escolha uma extensão mais curta nas Configurações ou obtenha mais análises.';
  }

  @override
  String get outlookMarketMood => 'Sentimento do mercado';

  @override
  String get moodVeryPessimistic => 'Muito pessimista';

  @override
  String get moodPessimistic => 'Pessimista';

  @override
  String get moodNeutral => 'Neutro';

  @override
  String get moodOptimistic => 'Otimista';

  @override
  String get moodVeryOptimistic => 'Muito otimista';

  @override
  String get scenarioBull => 'Cenário otimista';

  @override
  String get scenarioBase => 'Cenário base';

  @override
  String get scenarioBear => 'Cenário pessimista';

  @override
  String outlookCurrentPrice(String price) {
    return 'Preço atual: $price';
  }

  @override
  String get outlookKeyLevels => 'Níveis-chave';

  @override
  String get keyLevelSupport => 'Suporte';

  @override
  String get keyLevelResistance => 'Resistência';

  @override
  String get keyLevelAnchor => 'Âncora';

  @override
  String get upcomingEvents => 'Próximos eventos';

  @override
  String get outlookChartNote =>
      'Intervalos indicativos; as probabilidades são estimativas aproximadas, não previsões.';

  @override
  String get accountTitle => 'Conta';

  @override
  String get signIn => 'Iniciar sessão';

  @override
  String get signOut => 'Terminar sessão';

  @override
  String get notSignedIn => 'Sessão não iniciada';

  @override
  String get accountBenefit =>
      'Inicie sessão para que a sua subscrição funcione em todos os seus dispositivos.';

  @override
  String get accountSyncedNote =>
      'A sua subscrição e as análises restantes são as mesmas em todos os dispositivos.';

  @override
  String get signInTitle => 'Iniciar sessão no WhatStock';

  @override
  String get emailLabel => 'Endereço de e-mail';

  @override
  String get continueWithEmail => 'Continuar com e-mail';

  @override
  String codeSentTo(String email) {
    return 'Enviámos um código de 6 dígitos para $email. É válido durante 10 minutos.';
  }

  @override
  String get codeLabel => 'Código de acesso';

  @override
  String get resendCode => 'Enviar novo código';

  @override
  String get useDifferentEmail => 'Usar outro e-mail';

  @override
  String get errInvalidCode => 'O código está errado ou expirou.';

  @override
  String get errInvalidEmail => 'Introduza um endereço de e-mail válido.';

  @override
  String get errSignInFailed =>
      'Não foi possível iniciar sessão. Verifique a ligação e tente novamente.';

  @override
  String get checkoutWaiting =>
      'Conclua o pagamento no seu navegador. A app é atualizada automaticamente quando terminar.';

  @override
  String get paymentViaStripe =>
      'Pagamento seguro no seu navegador através da Stripe. Cancele quando quiser.';

  @override
  String get paymentViaStore =>
      'Cobrado através da sua conta App Store ou Google Play. Cancele a qualquer momento nas definições da loja.';

  @override
  String get keySpace => 'Espaço';

  @override
  String get doubleOptionTitle => 'Pressionar Option duas vezes';

  @override
  String get doubleOptionSubtitle =>
      'Pressionar rapidamente a tecla Option duas vezes também abre o WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Para que funcione também fora do WhatStock, ative o WhatStock em Ajustes do Sistema → Privacidade e Segurança → Monitoração de Entrada e, em seguida, abra-o novamente.';

  @override
  String get openSystemSettings => 'Abrir Ajustes do Sistema';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Pressione $shortcut ou duas vezes a tecla Option em qualquer lugar para abrir o WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Mais provável';

  @override
  String get longTermToday => 'Hoje';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years anos',
      one: '1 ano',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ao ano';
  }

  @override
  String longTermLikely(String price) {
    return 'mais provável: $price';
  }

  @override
  String get confidenceLow => 'Confiança baixa';

  @override
  String get confidenceMedium => 'Confiança média';

  @override
  String get confidenceHigh => 'Confiança alta';

  @override
  String get longTermNote =>
      'Os intervalos de longo prazo baseiam-se nas premissas indicadas e alargam-se com o tempo. Preços sem dividendos. Estimativas aproximadas, não previsões.';

  @override
  String get portfolio => 'Carteira';

  @override
  String get portfolioEmpty =>
      'Ainda está vazia. Abra uma ação e toque em “Adicionar à carteira” para acompanhar o que tem.';

  @override
  String get portfolioLocalNote =>
      'Guardado apenas neste dispositivo. Os totais são convertidos às taxas de referência do BCE; os preços podem ter atraso.';

  @override
  String get addToPortfolio => 'Adicionar à carteira';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Adicionar $symbol';
  }

  @override
  String get portfolioQuantity => 'Número de ações';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Preço por ação ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Data de compra';

  @override
  String get portfolioAdd => 'Adicionar';

  @override
  String get portfolioInvalidNumber => 'Introduza um número maior que zero.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol foi adicionado à carteira.';
  }

  @override
  String get portfolioTotalValue => 'Valor total';

  @override
  String get portfolioToday => 'Hoje';

  @override
  String get portfolioGainLoss => 'Ganho/perda';

  @override
  String get portfolioInvested => 'Investido';

  @override
  String get portfolioAllocation => 'Distribuição';

  @override
  String get portfolioPositions => 'Posições';

  @override
  String portfolioAvgCost(String price) {
    return 'custo médio $price';
  }

  @override
  String get portfolioYourPosition => 'A sua posição';

  @override
  String get portfolioPurchases => 'Compras';

  @override
  String get portfolioRemove => 'Remover';

  @override
  String get portfolioExcluded =>
      'As posições sem preço ou taxa de câmbio ficam fora dos totais.';

  @override
  String get priceAlerts => 'Alertas de preço';

  @override
  String get setPriceAlert => 'Criar alerta de preço';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alerta de preço · $symbol';
  }

  @override
  String get alertKindAbove => 'Sobe acima de';

  @override
  String get alertKindBelow => 'Desce abaixo de';

  @override
  String get alertKindMove => 'Mexe muito num dia';

  @override
  String alertTargetPrice(String currency) {
    return 'Preço ($currency)';
  }

  @override
  String get alertMovePercent => 'Variação diária (%)';

  @override
  String get alertAlreadyMet => 'O preço já passou este nível.';

  @override
  String get alertSave => 'Criar alerta';

  @override
  String alertCreated(String symbol) {
    return 'Alerta criado para $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Ainda não há alertas. Abra uma ação e toque no sino.';

  @override
  String get alertsNote =>
      'Os alertas são verificados a cada 5 minutos enquanto o WhatStock está aberto. No computador continua ativo na barra de menus ou na área de notificação; no telemóvel, por agora avisa quando a app está aberta.';

  @override
  String alertDescAbove(String price) {
    return 'Acima de $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Abaixo de $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Variação diária ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Disparado a $date a $price';
  }

  @override
  String get alertRearm => 'Reativar';

  @override
  String get alertDelete => 'Eliminar';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol subiu acima de $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol desceu abaixo de $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol variou $percent hoje';
  }

  @override
  String alertHitBody(String price) {
    return 'Preço atual: $price';
  }

  @override
  String get alertOpen => 'Abrir';

  @override
  String get keepInTrayTitle => 'Continuar ao fechar a janela';

  @override
  String get keepInTraySubtitle =>
      'O WhatStock fica na barra de menus ou na área de notificação, para que o atalho e os alertas de preço continuem a funcionar.';

  @override
  String get termsOfUse => 'Termos de utilização';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get subscriptionLegal =>
      'A subscrição renova-se automaticamente todos os meses até a cancelar. Ao subscrever, aceita os Termos de utilização e a Política de privacidade.';

  @override
  String get deleteAccount => 'Eliminar conta';

  @override
  String get deleteAccountTitle => 'Eliminar a sua conta?';

  @override
  String get deleteAccountBody =>
      'A sua conta e tudo o que está guardado no nosso servidor (e-mail, quota, utilização) serão eliminados definitivamente, e as análises não usadas perdem-se. Uma subscrição paga no navegador é cancelada de imediato; uma da App Store ou do Google Play tem de ser cancelada nas definições da loja.';

  @override
  String get deleteLocalData =>
      'Eliminar também os dados deste dispositivo (carteira, alertas, favoritos, histórico, análises guardadas)';

  @override
  String get deleteAccountConfirm => 'Eliminar definitivamente';

  @override
  String get accountDeleted => 'A sua conta foi eliminada.';

  @override
  String get errDeleteAccount =>
      'Não foi possível eliminar a conta. Verifique a ligação e tente novamente.';

  @override
  String get aiTrialBriefNote =>
      'As análises do período de teste são breves e feitas com um modelo de IA mais rápido. Com um plano, obtém a nossa IA mais capaz, mais pesquisas na web e as extensões Padrão e Detalhada.';

  @override
  String get billingMonthly => 'Mensal';

  @override
  String get billingYearly => 'Anual';

  @override
  String get yearlyDiscount => '2 meses grátis';

  @override
  String get perYear => '/ ano';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price por mês';
  }

  @override
  String get subscriptionLegalYearly =>
      'A subscrição anual renova-se automaticamente todos os anos até a cancelar. Ao subscrever, aceita os Termos de utilização e a Política de privacidade.';

  @override
  String get myAnalyses => 'Minhas análises';

  @override
  String get navAlerts => 'Alertas';

  @override
  String get inviteTitle => 'Pré-visualização fechada';

  @override
  String get inviteBody =>
      'De momento, o WhatStock está disponível apenas por convite. Insira o código de convite que recebeu.';

  @override
  String get inviteCodeLabel => 'Código de convite';

  @override
  String get inviteContinue => 'Continuar';

  @override
  String get inviteInvalid => 'Este código de convite não é válido.';

  @override
  String get inviteExpired =>
      'Este convite expirou. Peça um novo código à pessoa que lhe enviou o convite.';

  @override
  String get inviteDeviceLimit =>
      'Este código de convite já está em uso no número máximo de dispositivos.';

  @override
  String get previewConfidential => 'Pré-visualização confidencial';

  @override
  String get errPreviewDailyLimit =>
      'O limite diário de análises desta pré-visualização foi atingido. Tente novamente amanhã.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'há $count horas',
      one: 'há 1 hora',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'há $count dias',
      one: 'há 1 dia',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Atualizar esta análise?';

  @override
  String staleBody(String age) {
    return 'Ela foi feita $age. Cotações, notícias e resultados podem ter mudado desde então.';
  }

  @override
  String get staleKeep => 'Mostrar a anterior';

  @override
  String get staleRefresh => 'Fazer uma nova';

  @override
  String seeAll(int count) {
    return 'Ver todas ($count)';
  }

  @override
  String get searchAnalyses => 'Pesquisar suas análises';

  @override
  String get deleteAnalysis => 'Excluir';

  @override
  String analysisDeleted(String symbol) {
    return 'Análise de $symbol excluída';
  }

  @override
  String get keyLevelAlertHint =>
      'Toque em um nível para receber um alerta quando o preço chegar a ele.';

  @override
  String get shareAnalysisTitle => 'Compartilhar análise';

  @override
  String get shareAsImage => 'Compartilhar como imagem';

  @override
  String get shareAsText => 'Compartilhar como texto';

  @override
  String get shareCardFooter => 'Feito com WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Análise com IA · não é aconselhamento de investimento';

  @override
  String get referralTitle => 'Convidar amigos';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count análises extra',
      one: '1 análise extra',
    );
    return 'Compartilhe o seu código. O seu amigo recebe $_temp0 de imediato, e você recebe o mesmo após a primeira análise do seu amigo.';
  }

  @override
  String get referralYourCode => 'O seu código';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Convidados: $invited · Recompensados: $rewarded';
  }

  @override
  String get referralHaveCode => 'Tem um código de um amigo?';

  @override
  String get referralRedeem => 'Resgatar';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count análises extra adicionadas. Boas-vindas!',
      one: '1 análise extra adicionada. Boas-vindas!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Este código não existe. Verifique-o e tente novamente.';

  @override
  String get referralErrOwn => 'Não pode resgatar o seu próprio código.';

  @override
  String get referralErrAlready => 'Já resgatou o código de um amigo.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count análises extra',
      one: '1 análise extra',
    );
    return 'Analiso ações com o WhatStock: fotografe uma ação e a IA explica tudo. Com o meu código $code recebe $_temp0.';
  }

  @override
  String get referralCopied => 'Código copiado';

  @override
  String get onboardTitle1 => 'Fotografe uma ação';

  @override
  String get onboardBody1 =>
      'Basta a tela de uma corretora, um jornal ou o logotipo de uma empresa: o WhatStock reconhece a ação e mostra a cotação, o gráfico e os principais números.';

  @override
  String get onboardTitle2 => 'Entenda em minutos';

  @override
  String get onboardBody2 =>
      'A análise com IA explica o que movimenta a ação, os riscos, a avaliação e três cenários para onde o preço pode ir, com fontes e no seu idioma.';

  @override
  String get onboardTitle3 => 'Fique por dentro';

  @override
  String get onboardBody3 =>
      'Favoritos, sua carteira e os alertas de preço mantêm você informado. Suas análises ficam no seu dispositivo, prontas para reabrir.';

  @override
  String get onboardNext => 'Avançar';

  @override
  String get onboardStart => 'Começar';

  @override
  String get onboardSkip => 'Pular';

  @override
  String changesTitle(String date) {
    return 'Desde a análise anterior ($date)';
  }

  @override
  String get changesPrice => 'Preço';

  @override
  String get changesNoMajor =>
      'As perspectivas não mudaram significativamente.';

  @override
  String get changesPreviousSummary => 'Resumo anterior';
}
