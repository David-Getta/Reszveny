// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'StockLens';

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
  String get errorSectionUnavailable => 'Não foi possível carregar esta secção.';

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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count analistas', one: '1 analista');
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
  String get errRecognitionRefused => 'O serviço de reconhecimento não conseguiu processar esta imagem.';

  @override
  String get errRecognitionTruncated => 'A resposta do reconhecimento foi interrompida. Tente novamente.';

  @override
  String get errRecognitionBadResponse => 'Resposta inesperada do serviço de reconhecimento.';

  @override
  String get errRecognitionEmpty => 'O serviço de reconhecimento devolveu uma resposta vazia.';

  @override
  String get errMissingFinnhubKey => 'Os dados de mercado não estão configurados (falta FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Não foi possível contactar o serviço de dados de mercado. Verifique a sua conexão à internet.';

  @override
  String get errMarketRateLimited => 'Demasiados pedidos ao serviço de dados de mercado. Aguarde um minuto.';

  @override
  String errMarketHttp(String status) {
    return 'O serviço de dados de mercado devolveu um erro (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Resposta inesperada do serviço de dados de mercado.';

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
    return 'Pressione $shortcut em qualquer lugar para abrir o StockLens.';
  }

  @override
  String get trayOpen => 'Abrir o StockLens';

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
  String get aiGenerating => 'Preparando a análise… pode demorar um ou dois minutos.';

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
  String get errAiNotConfigured => 'A análise com IA não está configurada (falta ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Não foi possível contactar o serviço de IA. Verifique a sua conexão à internet.';

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
  String get chartUnavailable => 'O histórico de preços não está disponível na fonte de dados atual.';

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
  String get statementsUnavailable => 'Não há demonstrações financeiras publicadas disponíveis para esta ação.';

  @override
  String get launchAtLogin => 'Abrir ao iniciar sessão';

  @override
  String get hotkeyLabel => 'Atalho global';

  @override
  String get hotkeyRecordHint => 'Clique aqui e, em seguida, pressione a nova combinação de teclas';

  @override
  String get hotkeyReset => 'Restaurar predefinição';

  @override
  String get pasteImage => 'Colar imagem da área de transferência';

  @override
  String get errClipboardNoImage => 'Não há nenhuma imagem na área de transferência.';

  @override
  String get favorites => 'Favoritos';

  @override
  String get addToFavorites => 'Adicionar aos favoritos';

  @override
  String get removeFromFavorites => 'Remover dos favoritos';

  @override
  String get noFavorites => 'Ainda não há favoritos. Toque na estrela de uma ação para a adicionar.';

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
  String get updateDownloading => 'A transferir a atualização em segundo plano…';

  @override
  String get updateDownloaded => 'A atualização está pronta. Reinicie para a instalar.';

  @override
  String get updateNow => 'Atualizar';

  @override
  String get restartNow => 'Reiniciar';

  @override
  String get updatesViaStore => 'As atualizações chegam automaticamente através da loja de aplicações.';

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
  String get trialExpired => 'O seu teste gratuito terminou. Escolha um plano para continuar a analisar.';

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
  String get extraPacksHint => 'As análises extra nunca expiram e são usadas depois da sua quota mensal.';

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
  String get errTrialExpired => 'O seu teste gratuito terminou. Escolha um plano para continuar.';

  @override
  String get errNoPlan => 'É necessário um plano ativo para a análise com IA.';

  @override
  String get viewPlans => 'Ver planos';

  @override
  String get usageTitle => 'Utilização';

  @override
  String get demoPurchaseNote => 'Faturação de demonstração: as compras são simuladas nesta plataforma.';

  @override
  String get mostPopular => 'Mais popular';

  @override
  String get bestValue => 'Melhor valor';

  @override
  String get planFeaturesCommon =>
      'O reconhecimento de fotos, os dados em tempo real, os gráficos, os favoritos e os 44 idiomas estão incluídos em todos os planos. A quota cobre as análises com IA.';

  @override
  String get searchLanguages => 'Pesquisar idiomas…';

  @override
  String get noLanguageMatch => 'Nenhum idioma corresponde.';
}
