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
  String get labelYieldOnCost => 'Rendimento sobre o custo';

  @override
  String get labelDividendGrowth5y => 'Crescimento do dividendo (5 anos)';

  @override
  String get dividendNone => 'Nenhum dividendo pago nos últimos 12 meses.';

  @override
  String get dividendOnYourShares => 'Nas suas ações, por ano';

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
      'Guardado neste dispositivo e, se tiver sessão iniciada, na sua conta. Os totais são convertidos às taxas de referência do BCE; os preços podem ter atraso.';

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
  String homeDividendsThisYear(String amount) {
    return 'Dividendos este ano: $amount';
  }

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

  @override
  String get telemetryTitle => 'Ajude a melhorar o WhatStock';

  @override
  String get telemetryBody =>
      'Compartilhe estatísticas de uso anônimas e relatórios de falhas: quais recursos são usados e o que deu errado. Nunca suas ações, análises ou dados pessoais. Você pode mudar isso a qualquer momento em Configurações.';

  @override
  String get telemetryAllow => 'Permitir';

  @override
  String get telemetryDecline => 'Não, obrigado';

  @override
  String get telemetrySetting => 'Estatísticas anônimas e relatórios de falhas';

  @override
  String get telemetrySettingHint =>
      'Com que frequência os recursos são usados e relatórios de erros, sem dados pessoais nem o conteúdo das suas pesquisas e análises.';

  @override
  String get askButton => 'Perguntar sobre esta análise';

  @override
  String askTitle(String symbol) {
    return 'Perguntas sobre $symbol';
  }

  @override
  String get askIntro =>
      'Pergunte qualquer coisa sobre a análise: o que significa um risco, o que mudaria as perspectivas, como um número foi calculado. As respostas têm como base esta análise e não constituem aconselhamento de investimento.';

  @override
  String get askHint => 'Faça uma pergunta…';

  @override
  String get askSend => 'Enviar';

  @override
  String get askThinking => 'Pensando…';

  @override
  String get askSuggest1 => 'Qual é o maior risco?';

  @override
  String get askSuggest2 => 'O que mudaria as perspectivas?';

  @override
  String get askSuggest3 => 'Explique de forma simples';

  @override
  String get askMaxReached =>
      'Essa foi a última pergunta para esta análise. Gere uma nova análise para perguntar mais.';

  @override
  String get errAskLimit =>
      'Você atingiu o limite de perguntas de hoje. Tente novamente amanhã.';

  @override
  String get eventTomorrow => 'Amanhã';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'em $days dias',
      one: 'em 1 dia',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Resultados trimestrais';

  @override
  String get eventBeforeOpen => 'antes da abertura';

  @override
  String get eventAfterClose => 'após o fechamento';

  @override
  String eventEpsEstimate(String value) {
    return 'LPA estimado: $value';
  }

  @override
  String get eventFromAnalysis => 'Da sua análise';

  @override
  String get eventDividend => 'Dividendo esperado';

  @override
  String get eventDividendEstimate =>
      'Estimado a partir dos pagamentos que você registrou';

  @override
  String get eventsHint =>
      'Datas de resultados dos seus favoritos e das ações da carteira nos próximos 90 dias, os eventos com data apontados pelas suas análises e os dividendos esperados a partir dos pagamentos que você registrou.';

  @override
  String get eventsEmpty =>
      'Nenhum evento com data nos próximos 90 dias. Adicione favoritos ou ações à carteira para ver aqui as datas dos resultados; dividendos registrados mostram o próximo pagamento esperado.';

  @override
  String get compareTitle => 'Comparar';

  @override
  String get compareAdd => 'Adicionar ação';

  @override
  String get compareRemove => 'Remover';

  @override
  String get compareTickerHint => 'Ticker, ex.: MSFT';

  @override
  String get compareHint =>
      'Principais indicadores lado a lado; o melhor valor de cada linha fica destacado. Os valores estão na moeda de cada ação.';

  @override
  String get compareNoAnalysis => 'Ainda sem análise';

  @override
  String get portfolioDividends => 'Dividendos anuais';

  @override
  String portfolioDividendYield(String percent) {
    return 'Rendimento de $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Os dividendos anuais esperados baseiam-se nos dividendos pagos nos últimos 12 meses; os pagamentos futuros não são garantidos.';

  @override
  String positionDividend(String amount) {
    return 'Dividendo: $amount por ano';
  }

  @override
  String get chartAvgCost => 'Seu custo médio';

  @override
  String get chartAlertLevel => 'Alerta';

  @override
  String get marketsToday => 'Mercados hoje';

  @override
  String get notesTitle => 'Minhas notas';

  @override
  String get notesHint =>
      'Porque a comprou, o que está a acompanhar, o que o levaria a vender?';

  @override
  String get notesInfo =>
      'Guardado neste dispositivo e, se tiver sessão iniciada, na sua conta. A análise com IA tem em conta as suas notas.';

  @override
  String notesSaved(String date) {
    return 'Guardado $date';
  }

  @override
  String get peersTitle => 'Empresas semelhantes';

  @override
  String get portfolioExport => 'Exportar como CSV';

  @override
  String get portfolioImport => 'Importar de CSV';

  @override
  String get portfolioImportHint =>
      'Cole uma compra por linha: ticker, quantidade, preço, moeda, data (AAAA-MM-DD). As colunas podem ser separadas por vírgulas, ponto e vírgula ou tabulações; a linha de cabeçalho é opcional.';

  @override
  String get portfolioImportButton => 'Importar';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count compras adicionadas',
      one: '1 compra adicionada',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count linhas ignoradas',
      one: '1 linha ignorada',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'A carteira, os favoritos, os alertas de preço e as notas são sincronizados em todos os seus dispositivos.';

  @override
  String syncLast(String time) {
    return 'Última sincronização: $time';
  }

  @override
  String get syncNow => 'Sincronizar agora';

  @override
  String get syncFailed =>
      'Falha na sincronização. Uma nova tentativa será feita automaticamente.';

  @override
  String get alertEmailTitle => 'E-mail quando um alerta dispara';

  @override
  String get alertEmailOn =>
      'Verificamos os seus alertas a cada poucos minutos e enviamos-lhe um e-mail, mesmo com a app fechada.';

  @override
  String get alertEmailSignIn =>
      'Inicie sessão com o seu e-mail nas Configurações para receber alertas por e-mail, mesmo com a app fechada.';

  @override
  String get portfolioHistory => 'Evolução do valor';

  @override
  String get portfolioReviewTitle => 'Revisão da carteira com IA';

  @override
  String get portfolioReviewIntro =>
      'A IA analisa toda a sua carteira: concentração, exposição a setores e moedas, riscos que suas ações têm em comum e dividendos. Usa 1 análise.';

  @override
  String get portfolioReviewButton => 'Revisar minha carteira';

  @override
  String get portfolioReviewAgain => 'Revisar novamente';

  @override
  String get portfolioReviewWorking => 'Revisando sua carteira…';

  @override
  String get digestTitle => 'Resumo semanal por e-mail';

  @override
  String get digestHint =>
      'Toda segunda-feira: como seus favoritos e sua carteira se movimentaram na semana passada e as próximas datas de resultados.';

  @override
  String get benchmarkTitle => 'Comparação com o S&P 500';

  @override
  String get benchmarkTitleIndex => 'Comparação com um índice';

  @override
  String get benchmarkHintIndex =>
      'Como se cada compra tivesse sido investida, no mesmo dia, num fundo que replica o índice escolhido. Dividendos não incluídos; rendibilidades passadas não preveem as futuras.';

  @override
  String get benchmarkYours => 'As suas compras';

  @override
  String benchmarkAhead(String points) {
    return '$points pontos percentuais acima do índice';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points pontos percentuais abaixo do índice';
  }

  @override
  String get portfolioSell => 'Vender';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Vender $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Preço de venda por ação ($currency)';
  }

  @override
  String get portfolioSellDate => 'Data de venda';

  @override
  String get portfolioSellAll => 'Todas';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Você tem $quantity';
  }

  @override
  String get portfolioSold => 'Venda';

  @override
  String get portfolioRealized => 'Realizado';

  @override
  String get portfolioClosed => 'Posições encerradas';

  @override
  String get portfolioClosedNote => 'Todas as ações vendidas';

  @override
  String get portfolioTransactions => 'Transações';

  @override
  String get portfolioRealizedByYear => 'Ganhos realizados por ano';

  @override
  String get portfolioRealizedHint =>
      'As vendas são associadas primeiro às suas compras mais antigas (FIFO) e convertidas pela taxa de câmbio de hoje. Para a declaração de impostos, use o extrato da sua corretora.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Desde esta análise, foram publicados novos resultados trimestrais ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Novos resultados';

  @override
  String get portfolioImportBrokers =>
      'Exportações da Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity e Robinhood também são reconhecidas, com as vendas e os dividendos (líquidos de retenção na fonte); depósitos são ignorados.';

  @override
  String get portfolioImportFile => 'Escolher arquivo';

  @override
  String offlineBanner(String time) {
    return 'Sem ligação – a mostrar os últimos dados guardados ($time).';
  }

  @override
  String get glossMarketCap =>
      'Quanto vale a empresa inteira na bolsa: preço da ação × número de ações.';

  @override
  String get glossSharesOutstanding =>
      'Quantas ações a empresa emitiu. Se o número cresce, cada ação fica com uma fatia menor; as recompras reduzem-no.';

  @override
  String get glossPeTrailing =>
      'Preço ÷ lucro por ação dos últimos 12 meses: quantos anos do lucro atual está a pagar. Mais baixo é mais barato, mas empresas de crescimento rápido costumam ter um P/E alto.';

  @override
  String get glossPeForward =>
      'Como o P/E, mas com o lucro que os analistas esperam para os próximos 12 meses. Abaixo do P/E histórico significa que se espera que os lucros cresçam.';

  @override
  String get glossPb =>
      'Preço ÷ valor contabilístico (ativos menos dívidas) por ação. Perto de 1 significa que o mercado avalia a empresa pelo que ela possui no papel.';

  @override
  String get glossPs =>
      'Valor de mercado ÷ receita anual. Útil para empresas com pouco ou nenhum lucro; compare dentro do mesmo setor.';

  @override
  String get glossEvToFcf =>
      'Valor da empresa incluindo a dívida (EV) ÷ o dinheiro que gera num ano depois dos investimentos. Mais baixo significa mais dinheiro pelo preço que paga.';

  @override
  String get glossPeg =>
      'P/E ÷ crescimento anual esperado do lucro (%). Perto de 1 é muitas vezes visto como justo; coloca o P/E à luz do crescimento.';

  @override
  String get glossEps =>
      'Lucro por ação nos últimos 12 meses. Um EPS a subir ao longo dos anos é um dos sinais mais fortes de uma empresa saudável.';

  @override
  String get glossBeta =>
      'Quanto a ação tende a mover-se com o mercado: 1 = como o mercado, 1,5 = oscilações cerca de 50% maiores, abaixo de 1 = mais calma.';

  @override
  String get glossRevenueTtm =>
      'Total de vendas dos últimos 12 meses, antes de quaisquer custos.';

  @override
  String get glossNetIncomeTtm =>
      'O lucro que sobra depois de todos os custos, juros e impostos nos últimos 12 meses.';

  @override
  String get glossGrossMargin =>
      'A parte da receita que sobra depois do custo direto dos produtos. Uma margem alta indica muitas vezes poder de fixação de preços.';

  @override
  String get glossOperatingMargin =>
      'A parte da receita que sobra depois de gerir o negócio (salários, rendas, marketing), antes de juros e impostos.';

  @override
  String get glossNetMargin =>
      'A parte da receita que se torna lucro final. 20% significa que, de cada 100 em vendas, 20 são lucro.';

  @override
  String get glossRoe =>
      'Rentabilidade do capital próprio: lucro anual ÷ capital dos donos. Mostra quão bem a gestão usa o dinheiro dos acionistas; acima de cerca de 15% é forte.';

  @override
  String get glossRoa =>
      'Rentabilidade dos ativos: lucro anual ÷ tudo o que a empresa possui. Compare dentro do mesmo setor.';

  @override
  String get glossDebtToEquity =>
      'Dívida ÷ capital dos donos. Mais alto significa mais dinheiro emprestado: mais risco quando os juros sobem ou o negócio abranda.';

  @override
  String get glossCurrentRatio =>
      'Ativos de curto prazo ÷ contas a pagar no prazo de um ano. Acima de 1 significa que a empresa consegue cobrir as contas próximas.';

  @override
  String get glossRevenueGrowth =>
      'Quanto a receita cresceu em relação a um ano antes.';

  @override
  String get glossEpsGrowth =>
      'Quanto o lucro por ação cresceu em relação a um ano antes.';

  @override
  String get glossDividendYield =>
      'Dividendo anual ÷ preço da ação: o rendimento em dinheiro que receberia por ano, em percentagem do que paga.';

  @override
  String get glossDividendPerShare =>
      'O dividendo pago por uma ação no último ano.';

  @override
  String get glossPayoutRatio =>
      'A parte do lucro distribuída como dividendos. Acima de 100%, a empresa paga mais do que ganha, o que raramente dura.';

  @override
  String get portfolioBeta => 'Beta da carteira';

  @override
  String get glossPortfolioBeta =>
      'O beta das suas ações, ponderado pelo valor: aproximadamente quantos por cento as suas ações se movem quando o mercado se move 1%. Acima de 1 oscilam mais do que o mercado, abaixo de 1 menos. O caixa não entra no cálculo.';

  @override
  String get portfolioTop3 => '3 maiores posições';

  @override
  String get glossPortfolioTop3 =>
      'Quanto do valor das suas ações está nas suas três maiores posições. Quanto mais alto, mais uma má notícia sobre uma única empresa pode prejudicar toda a carteira.';

  @override
  String get glossDividendGrowth5y =>
      'Quanto o dividendo por ação cresceu, em média, por ano nos últimos cinco anos. Um crescimento constante costuma indicar que a empresa confia no seu fluxo de caixa; um corte é muitas vezes um sinal de alerta.';

  @override
  String get glossYieldOnCost =>
      'Dividendos recebidos nos últimos 12 meses divididos pelo que você pagou pelas ações que ainda possui. Diferente do rendimento do dividendo, é medido em relação ao seu próprio preço de compra, não ao preço de hoje.';

  @override
  String get glossTitle => 'O que significa?';

  @override
  String get watchNewsTitle => 'Notícias das suas ações';

  @override
  String get undo => 'Desfazer';

  @override
  String get watchSort => 'Ordenar';

  @override
  String get watchSortOwn => 'Ordem própria';

  @override
  String get watchSortGainers => 'Maiores altas primeiro';

  @override
  String get watchSortLosers => 'Maiores baixas primeiro';

  @override
  String get watchSortName => 'Por ticker (A–Z)';

  @override
  String get watchHint =>
      'Arraste a alça para reordenar, deslize para a esquerda para remover. A linha mostra os últimos 30 dias.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: a sua análise está pronta.';
  }

  @override
  String alertFromCost(String price) {
    return 'Com base no seu preço médio de compra ($price):';
  }

  @override
  String get briefTitle => 'Hoje com as suas ações';

  @override
  String get briefButton => 'Resumir o dia';

  @override
  String get briefHint =>
      'Um breve resumo com IA de como a sua carteira e os seus favoritos se moveram hoje e do que dizem as últimas notícias sobre eles. Não gasta nenhuma análise.';

  @override
  String get briefRefresh => 'Atualizar';

  @override
  String get sectionEarnings => 'Resultados trimestrais';

  @override
  String earningsNext(String date) {
    return 'Próximo resultado: $date';
  }

  @override
  String get earningsExpected => 'LPA esperado';

  @override
  String get earningsReported => 'LPA divulgado';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'No LPA esperado ou acima em $beats dos últimos $total trimestres',
      one: 'No LPA esperado ou acima em $beats de 1 trimestre',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol divulga resultados trimestrais amanhã';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol divulga resultados trimestrais hoje';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Dividendo de $symbol esperado hoje';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Cerca de $amount. Registre-o na carteira quando ele chegar.';
  }

  @override
  String get dividendRemindersTitle => 'Lembretes de dividendos';

  @override
  String get dividendRemindersSubtitle =>
      'Uma notificação no dia em que um dividendo é esperado, com base no ritmo dos pagamentos registrados, para você registrá-lo';

  @override
  String get earningsRemindersTitle => 'Lembretes de resultados';

  @override
  String get earningsRemindersSubtitle =>
      'Uma notificação na véspera da divulgação dos resultados trimestrais das ações dos favoritos ou da carteira';

  @override
  String addAllToFavorites(int count) {
    return 'Adicionar todas aos favoritos ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Importar de uma captura de ecrã';

  @override
  String get holdingsReading => 'A ler as suas posições…';

  @override
  String get holdingsReviewTitle => 'Posições encontradas';

  @override
  String get holdingsReviewHint =>
      'Verifique os números antes de os adicionar. O preço é o seu preço médio de compra por ação, não o preço de hoje.';

  @override
  String get holdingsNoPrice => 'Sem preço médio de compra na imagem';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Adicionar $count posições',
      one: 'Adicionar 1 posição',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Não foram encontradas posições em ações nesta imagem. Tente uma captura de ecrã da página de posições ou carteira da sua corretora.';

  @override
  String get week52Range => 'Intervalo de 52 semanas';

  @override
  String week52BelowHigh(String percent) {
    return '$percent abaixo do máximo de 52 semanas';
  }

  @override
  String get week52AtHigh => 'No máximo de 52 semanas';

  @override
  String get alertKindTrailing => 'Cai desde o pico';

  @override
  String get alertTrailingPercent => 'Queda desde o pico (%)';

  @override
  String get alertTrailingHint =>
      'Acompanha o preço a subir: o alerta dispara quando o preço cai isto desde o ponto mais alto atingido após ser definido.';

  @override
  String alertDescTrailing(String percent) {
    return 'Queda de $percent desde o pico';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'pico até agora: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol caiu $percent desde o pico';
  }

  @override
  String get sectionInsiders => 'Negociações de insiders';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count compras',
      one: '1 compra',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vendas',
      one: '1 venda',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Líquido: $shares ações';
  }

  @override
  String get insiderBuy => 'Comprou';

  @override
  String get insiderSell => 'Vendeu';

  @override
  String get insiderHint =>
      'Compras e vendas no mercado aberto por executivos e conselheiros nos últimos 90 dias (SEC Form 4). Exercícios de opções e concessões de ações não são contabilizados.';

  @override
  String get insiderNone =>
      'Nenhuma compra ou venda de insiders no mercado aberto nos últimos 90 dias.';

  @override
  String get analystTrend => 'Como as opiniões mudaram mês a mês';

  @override
  String get watchListAll => 'Todos';

  @override
  String get watchListNew => 'Nova lista';

  @override
  String get watchListName => 'Nome da lista';

  @override
  String get watchListRename => 'Renomear lista';

  @override
  String get watchListDelete => 'Excluir lista';

  @override
  String get watchListAddTo => 'Adicionar a uma lista';

  @override
  String get watchListEmpty =>
      'Ainda não há ações nesta lista. Toque no botão de lista ao lado de uma ação para adicioná-la.';

  @override
  String get portfolioAskTitle => 'Perguntas sobre sua carteira';

  @override
  String get rangeYtd => 'No ano';

  @override
  String get backupTitle => 'Cópia de segurança';

  @override
  String get backupSave => 'Guardar cópia de segurança';

  @override
  String get backupSaveHint =>
      'Os seus favoritos, listas, carteira, alertas e notas num único ficheiro.';

  @override
  String get backupRestore => 'Restaurar de uma cópia de segurança';

  @override
  String get backupRestoreHint =>
      'Adiciona o que está no ficheiro; nada do que tem agora é apagado.';

  @override
  String get backupRestored => 'Cópia de segurança restaurada.';

  @override
  String get backupInvalid =>
      'Este ficheiro não é uma cópia de segurança do WhatStock.';

  @override
  String get allocationPositions => 'Ações';

  @override
  String get allocationSectors => 'Setores';

  @override
  String get allocationCurrencies => 'Moedas';

  @override
  String get allocationAccounts => 'Contas';

  @override
  String get compareReturn1y => 'Retorno em 1 ano';

  @override
  String get compareFromHigh => 'Desde o máximo de 52 semanas';

  @override
  String get briefAutoTitle => 'Resumo diário toda manhã';

  @override
  String get briefAutoSubtitle =>
      '“Hoje com as suas ações” é criado automaticamente após as 7h enquanto o app está em execução; nos computadores, uma notificação avisa você. Usa o seu limite diário de perguntas, não uma análise.';

  @override
  String get targetsButton => 'Distribuição-alvo';

  @override
  String get targetsTitle => 'Distribuição-alvo';

  @override
  String get targetsHint =>
      'Defina a parcela da carteira que cada ação deve ter. Deixe o campo vazio para não definir meta. O app mostra então o que comprar ou vender para chegar lá.';

  @override
  String targetsSum(String percent) {
    return 'Total: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Comprar ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Vender ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Na meta';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol supera o LPA esperado';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol fica abaixo do LPA esperado';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'LPA divulgado $actual, esperado $estimate';
  }

  @override
  String get newsExplain => 'O que isto significa?';

  @override
  String get watchAlertAll => 'Alerta de grandes variações diárias';

  @override
  String get watchAlertAllHint =>
      'Um alerta de preço para cada ação desta lista, que dispara quando ela se mexe tanto num dia, para cima ou para baixo. As ações que já têm um mantêm o seu.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alertas definidos',
      one: '1 alerta definido',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Exportar ganhos realizados (CSV)';

  @override
  String get portfolioAnnualReturn => 'Rentabilidade anual';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ano';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Rentabilidade anual ponderada pelo dinheiro (XIRR): considera quando você comprou e vendeu, então o dinheiro adicionado depois não a distorce. Exibida quando sua primeira compra tiver pelo menos um ano; os dividendos não estão incluídos.';

  @override
  String get eventsAddToCalendar => 'Adicionar ao calendário (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Alerta da carteira';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Uma notificação quando toda a sua carteira variar tanto em um dia.';

  @override
  String get portfolioMoveAlertOff => 'Desativado';

  @override
  String portfolioMoveUp(String percent) {
    return 'Sua carteira subiu $percent hoje';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Sua carteira caiu $percent hoje';
  }

  @override
  String get whatIfTitle => 'E se tivesse investido?';

  @override
  String get whatIfAmount => 'Montante';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount investidos há $period valeriam hoje';
  }

  @override
  String get whatIfNote =>
      'Baseado apenas no preço da ação: dividendos, comissões e impostos não estão incluídos. Rendibilidades passadas não preveem as futuras.';

  @override
  String get watchShare => 'Compartilhar lista';

  @override
  String get watchImport => 'Adicionar tickers';

  @override
  String get watchImportHint =>
      'Cole tickers separados por vírgulas, espaços ou quebras de linha – por exemplo, uma lista que alguém compartilhou com você.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ações adicionadas',
      one: '1 ação adicionada',
      zero: 'Nenhuma ação nova',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Maiores primeiro';

  @override
  String get positionsSortGain => 'Maior retorno total primeiro';

  @override
  String get positionsSortToday => 'Melhores de hoje primeiro';

  @override
  String get chartMyBuys => 'Suas compras';

  @override
  String get chartMySells => 'Suas vendas';

  @override
  String get shortcutsTitle => 'Atalhos de teclado';

  @override
  String usMarketOpen(String time) {
    return 'Mercado dos EUA aberto · fecha em $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Mercado dos EUA fechado · abre em $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days d $hours h';
  }

  @override
  String get dividendGoalSet => 'Definir meta mensal de dividendos';

  @override
  String get dividendGoalTitle => 'Meta mensal de dividendos';

  @override
  String get dividendGoalAmount => 'Dividendos por mês';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Cerca de $amount por mês com os rendimentos atuais: $percent da sua meta de $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Cerca de $amount por mês com os rendimentos atuais: meta de $goal atingida';
  }

  @override
  String get portfolioAccount => 'Conta';

  @override
  String get portfolioAccountHint => 'ex.: PGBL (opcional)';

  @override
  String get portfolioAccountAdd => 'Informar conta';

  @override
  String get portfolioAccountsAll => 'Todas as contas';

  @override
  String get portfolioAccountNote =>
      'Apenas as transações e os dividendos desta conta. Caixa, metas e a revisão com IA aparecem em Todas as contas.';

  @override
  String get portfolioNoAccount => 'Sem conta';

  @override
  String portfolioFee(String currency) {
    return 'Comissão ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Adicionar comissão';

  @override
  String portfolioFeeRow(String amount) {
    return 'Comissão: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Resumo anual';

  @override
  String get portfolioProceeds => 'Valor de alienação';

  @override
  String get portfolioCostBasis => 'Custo de aquisição';

  @override
  String get portfolioFeesPaid => 'Comissões pagas';

  @override
  String get portfolioAnnualSummaryNote =>
      'Valores na moeda original, sem conversão. O valor de alienação já desconta a comissão de venda; o custo de aquisição inclui a comissão de compra (FIFO). Para a declaração de imposto, converta pela taxa de câmbio exigida pela sua autoridade fiscal.';

  @override
  String get portfolioShare => 'Compartilhar desempenho';

  @override
  String get portfolioShareHeading => 'Minha carteira';

  @override
  String get portfolioTopHoldings => 'Maiores posições';

  @override
  String get portfolioShareNote =>
      'Apenas as percentagens são compartilhadas, sem valores.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count posições',
      one: '$count posição',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Não é aconselhamento de investimento';

  @override
  String get contributionButton => 'Investir dinheiro novo';

  @override
  String contributionAmount(String currency) {
    return 'Valor a investir ($currency)';
  }

  @override
  String get contributionHint =>
      'Só compras, sem vendas: as posições mais abaixo da meta recebem o dinheiro primeiro.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares ações';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Sem preço atual para $symbols: ficam fora da distribuição.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Se a rentabilidade anual se mantiver ($rate), atingirá a meta por volta de $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Queda máxima';

  @override
  String get glossMaxDrawdown =>
      'A maior queda do valor das suas ações de um pico anterior até um fundo posterior, sem o efeito das suas compras e vendas (ponderada pelo tempo). Mostra o quão profunda foi a queda que a sua carteira já atravessou.';

  @override
  String watchSince(String date) {
    return 'Desde que a adicionou aos favoritos ($date)';
  }

  @override
  String get portfolioSampleTry => 'Experimentar com uma carteira de exemplo';

  @override
  String get portfolioSampleBanner =>
      'Esta é uma carteira de exemplo. Adicione as suas próprias compras ao lado ou remova-a.';

  @override
  String get portfolioSampleRemove => 'Remover exemplo';

  @override
  String get portfolioStopsAll => 'Stop móvel para todas as posições';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count stops móveis definidos',
      one: '1 stop móvel definido',
      zero: 'Todas as posições já têm stop móvel',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent desde a venda';
  }

  @override
  String get lotPreviewRealized => 'Realizado nesta venda (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Novo custo médio: $after (agora $before)';
  }

  @override
  String get portfolioYtdReturn => 'Rentabilidade este ano';

  @override
  String get glossTwrYtd =>
      'Rentabilidade ponderada pelo tempo desde o início do ano (ou desde a sua primeira compra, se foi este ano): cada dia conta a variação das ações que detinha nesse dia, e os dias são encadeados – o dinheiro que deposita ou retira não é rentabilidade, por isso pode ser comparada com um índice. Abaixo: o índice escolhido no mesmo período.';

  @override
  String alertDistance(String price, String percent) {
    return 'Agora $price · falta $percent';
  }

  @override
  String get watchSortSince => 'Por variação desde a adição';

  @override
  String get portfolioTodayMovers => 'Maiores variações hoje:';

  @override
  String get lotNoteAdd => 'Adicionar nota';

  @override
  String get lotNoteBuyHint =>
      'Porquê comprar? Fica registado nas notas da ação, com a data.';

  @override
  String get lotNoteSellHint =>
      'Porquê vender? Fica registado nas notas da ação, com a data.';

  @override
  String get lotNoteBought => 'Compra';

  @override
  String get positionHeld => 'Tempo em carteira';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months meses',
      one: '$months mês',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dias',
      one: '$days dia',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'desde $date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Peso na carteira depois: $after (agora $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Pagar com o caixa (agora $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Adicionar ao caixa (agora $amount)';
  }

  @override
  String get onboardTitle4 => 'Acompanhe sua carteira';

  @override
  String get onboardBody4 =>
      'Importe o extrato da sua corretora (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) ou adicione operações manualmente: veja sua rentabilidade ao lado de um índice, seus dividendos e um resumo anual para a declaração de impostos.';

  @override
  String get lotEdit => 'Editar';

  @override
  String lotEditTitle(String symbol) {
    return 'Editar transação · $symbol';
  }

  @override
  String get lotSave => 'Guardar';

  @override
  String dividendEditTitle(String symbol) {
    return 'Editar dividendo · $symbol';
  }

  @override
  String get activityTitle => 'Todas as transações';

  @override
  String get activitySearchHint => 'Filtrar por ticker';

  @override
  String get activityNoMatch => 'Nenhuma transação corresponde ao filtro.';

  @override
  String get portfolioGoalSet => 'Definir meta';

  @override
  String get portfolioGoalTitle => 'Meta da carteira';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent da sua meta de $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Meta de $amount atingida';
  }

  @override
  String get portfolioGoalRemove => 'Remover meta';

  @override
  String get alertEdit => 'Editar alerta';

  @override
  String get positionOpenLots => 'Ainda em carteira (mais antigas primeiro)';

  @override
  String get lotRemoved => 'Transação excluída';

  @override
  String get alertDeleted => 'Alerta excluído';

  @override
  String get alertsClearTriggered => 'Limpar alertas disparados';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alertas removidos',
      one: '1 alerta removido',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Tela inicial';

  @override
  String get allocationCountries => 'Países';

  @override
  String get newsExplainNoteResearch =>
      'Explicação de IA: pesquisa os factos na web, abre o artigo e avalia a fiabilidade da fonte. Não constitui aconselhamento de investimento. Usa o seu limite diário de perguntas, não uma análise.';

  @override
  String get sourceOfficial => 'Oficial';

  @override
  String get sourcePressRelease => 'Comunicado';

  @override
  String get sourceMajorNews => 'Grande imprensa';

  @override
  String get sourceOpinion => 'Opinião';

  @override
  String get earningsSummaryButton => 'O que dizia o último relatório?';

  @override
  String get earningsSummaryNote =>
      'Resumo de IA do anúncio de resultados da empresa e da cobertura da imprensa que encontra na web. Não constitui aconselhamento de investimento. Usa o seu limite diário de perguntas, não uma análise.';

  @override
  String get compareLastSurprise => 'LPA último trimestre vs. esperado';

  @override
  String get compareNextReport => 'Próximo resultado';

  @override
  String get resolvingDescription => 'A identificar a ação a que se refere…';

  @override
  String get instrumentTitle => 'Sobre este instrumento';

  @override
  String get instrumentHint =>
      'Não há perfil de empresa para este símbolo – pode ser um ETF, um fundo ou um certificado de depósito. Pergunte à IA o que é, o que contém e quanto custa.';

  @override
  String get instrumentAsk => 'O que é isto?';

  @override
  String get instrumentNote =>
      'Explicação de IA a partir da página do fundo do emitente e de sites financeiros que encontra na web. Não constitui aconselhamento de investimento. Usa o seu limite diário de perguntas, não uma análise.';

  @override
  String suggestAskAi(String query) {
    return 'Perguntar à IA: «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Sem preço atual para $symbols.';
  }

  @override
  String get eventsRecentResults => 'Resultados recentes';

  @override
  String get saveToNotes => 'Salvar nas minhas notas';

  @override
  String get savedToNotes => 'Salvo nas suas notas';

  @override
  String get portfolioDividendsReceived => 'Dividendos recebidos';

  @override
  String get portfolioDividendsThisYear => 'Este ano';

  @override
  String get portfolioDividendsAllTime => 'Total acumulado';

  @override
  String get portfolioAddDividend => 'Adicionar dividendo';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Valor recebido ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Data do pagamento';

  @override
  String get portfolioDividendsEmpty =>
      'Nenhum dividendo registrado ainda. Adicione manualmente ou importe o extrato da sua corretora – as linhas de dividendos também são reconhecidas.';

  @override
  String get portfolioSplit => 'Desdobramento de ações';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Desdobramento de ações: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'As compras e vendas com data anterior ao desdobramento são ajustadas: o número de ações é multiplicado e o preço por ação dividido, de modo que o custo permanece o mesmo.';

  @override
  String get portfolioSplitRatio => 'Proporção (novas : antigas)';

  @override
  String get portfolioSplitRatioError =>
      'Insira uma proporção como 10:1, ou 1:10 para um agrupamento (split inverso).';

  @override
  String get portfolioSplitDate => 'Data do desdobramento';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Desdobramento de ações $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Desdobramento de ações eliminado';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count desdobramentos de ações adicionados',
      one: '1 desdobramento de ações adicionado',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dividendos adicionados',
      one: '1 dividendo adicionado',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Exportar dividendos (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividendo excluído';

  @override
  String get portfolioDividendsHint =>
      'Valores como chegaram na sua conta, na moeda do pagamento; os totais são convertidos pela cotação de hoje. Para a declaração de imposto, use o informe da sua corretora.';

  @override
  String get awayTitle => 'Enquanto você esteve fora';

  @override
  String awaySince(String when) {
    return 'Desde $when';
  }

  @override
  String get awayQuiet => 'Nada se mexeu muito.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alertas disparados',
      one: '1 alerta disparado',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Resultados divulgados: $symbols';
  }

  @override
  String get moveWhyButton => 'Por que está se movendo hoje?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent hoje';
  }

  @override
  String get moveWhyNote =>
      'Explicação por IA com base nas notícias de hoje encontradas na web; o motivo real pode ser desconhecido ou diferente. Não é recomendação de investimento. Usa sua cota diária de perguntas, não uma análise.';

  @override
  String get sectionTechnical => 'Quadro técnico';

  @override
  String get labelSma50 => 'Média de 50 dias';

  @override
  String get labelSma200 => 'Média de 200 dias';

  @override
  String get labelRsi => 'RSI (14 dias)';

  @override
  String get labelVolatility30 => 'Volatilidade (30 dias)';

  @override
  String techAbove(String percent) {
    return '$percent acima';
  }

  @override
  String techBelow(String percent) {
    return '$percent abaixo';
  }

  @override
  String get techOverbought => 'sobrecomprada';

  @override
  String get techOversold => 'sobrevendida';

  @override
  String get techNeutral => 'neutro';

  @override
  String get techGoldenCross =>
      'A média de 50 dias está acima da média de 200 dias – tendência de alta pela leitura clássica.';

  @override
  String get techDeathCross =>
      'A média de 50 dias está abaixo da média de 200 dias – tendência de baixa pela leitura clássica.';

  @override
  String get glossSma50 =>
      'O preço médio de fechamento dos últimos 50 pregões. Preço acima dela costuma ser lido como força no curto prazo; abaixo, como fraqueza.';

  @override
  String get glossSma200 =>
      'O preço médio de fechamento dos últimos 200 pregões – a linha clássica de tendência de longo prazo. Muitos investidores tratam um preço acima dela como tendência de alta no longo prazo.';

  @override
  String get glossRsi =>
      'Índice de força relativa: compara os ganhos recentes com as perdas recentes numa escala de 0 a 100. Acima de 70, a ação costuma ser chamada de sobrecomprada (subiu rápido); abaixo de 30, de sobrevendida – mas uma tendência forte pode ficar ali por muito tempo.';

  @override
  String get glossVolatility =>
      'Quanto o preço oscila de um dia para o outro, anualizado: 20% significa que um ano típico se move dentro de aproximadamente ±20%. Volatilidade maior significa movimentos maiores nos dois sentidos.';

  @override
  String get techNote =>
      'Calculado a partir dos preços de fechamento diários. Sinais técnicos descrevem o passado, não o futuro.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above de $count posições acima da média de 200 dias';
  }

  @override
  String get watchSignalsTitle => 'Sinais';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · sobrevendida';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · sobrecomprada';
  }

  @override
  String get signalCrossedAbove => 'cruzou acima da média de 200 dias';

  @override
  String get signalCrossedBelow => 'cruzou abaixo da média de 200 dias';

  @override
  String get signalAlertsTitle => 'Notificações de sinais técnicos';

  @override
  String get signalAlertsSubtitle =>
      'Uma vez por dia, quando uma ação que você acompanha fica sobrevendida ou sobrecomprada (RSI), ou seu preço cruza a média de 200 dias.';

  @override
  String get signalAlertsNotification => 'Sinais técnicos';

  @override
  String get glossaryPageTitle => 'Glossário';

  @override
  String get glossaryPageSubtitle =>
      'Explicações simples de cada número que o app mostra, de P/E a RSI';

  @override
  String get glossarySearchHint => 'Buscar no glossário';

  @override
  String get portfolioCash => 'Caixa';

  @override
  String get portfolioCashTitle => 'Saldo em caixa';

  @override
  String get portfolioCashHint =>
      'Dinheiro não investido na sua corretora, por moeda. Conta no valor total e na distribuição; não na rentabilidade.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Valor ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Definir saldo em caixa';

  @override
  String get portfolioDividendsByMonth => 'Por mês';

  @override
  String get dividendsLegendReceived => 'Recebidos';

  @override
  String get dividendsLegendExpected => 'Esperados';

  @override
  String get portfolioDividendsExpected => 'Próximo esperado';

  @override
  String get portfolioDividendsExpectedNote =>
      'Estimado a partir das datas e valores dos pagamentos que você registrou; as empresas podem alterá-los ou suspendê-los.';

  @override
  String portfolioDividendAround(String date) {
    return 'por volta de $date';
  }
}
