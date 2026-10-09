import '../../core/errors.dart';
import '../../core/models/analyst_consensus.dart';
import '../../core/models/company_profile.dart';
import '../../core/models/financial_statements.dart';
import '../../core/models/news_item.dart';
import '../../core/models/price_history.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_metrics.dart';
import '../../core/models/stock_quote.dart';
import 'market_data_provider.dart';

/// Beégetett mintaadatok, hogy az app API-kulcs nélkül is végigjárható
/// legyen. Nem valós, nem aktuális adatok!
class DemoMarketDataProvider extends MarketDataProvider {
  DemoMarketDataProvider({this.latency = const Duration(milliseconds: 400)});

  final Duration latency;

  @override
  String get name => 'Demo';

  static const supportedSymbols = ['AAPL', 'MSFT', 'NVDA', 'OTP'];

  Future<void> _wait() => Future<void>.delayed(latency);

  void _check(String symbol) {
    if (!supportedSymbols.contains(symbol)) {
      throw MarketDataException(AppErrorCode.demoUnsupportedSymbol, detail: supportedSymbols.join(', '));
    }
  }

  @override
  Future<PriceHistory> history(String symbol, {int years = 5}) async {
    await _wait();
    _check(symbol);
    final last = (await quote(symbol)).price;
    // Determinisztikus, bolyongás-szerű minta-sorozat, ami a mai árnál végződik.
    final days = years * 252;
    final values = List<double>.filled(days, 0);
    var seed = symbol.codeUnits.fold<int>(7, (a, b) => (a * 31 + b) & 0x7fffffff);
    double rnd() {
      seed = (seed * 1103515245 + 12345) & 0x7fffffff;
      return seed / 0x7fffffff;
    }

    var v = 1.0;
    for (var i = 0; i < days; i++) {
      v *= 1 + (rnd() - 0.48) * 0.03;
      values[i] = v;
    }
    final scale = last / values.last;
    // Kereskedési napok visszafelé a mai naptól (hétvégék kihagyva).
    final dates = <DateTime>[];
    var d = DateTime.now();
    while (dates.length < days) {
      if (d.weekday <= DateTime.friday) dates.add(DateTime(d.year, d.month, d.day));
      d = d.subtract(const Duration(days: 1));
    }
    final points = <PricePoint>[
      for (var i = 0; i < days; i++)
        PricePoint(
          time: dates[days - 1 - i],
          close: values[i] * scale,
          open: values[i] * scale * 0.995,
          high: values[i] * scale * 1.01,
          low: values[i] * scale * 0.99,
          volume: 40e6,
        ),
    ];
    return PriceHistory(symbol: symbol, points: points);
  }

  @override
  Future<FinancialStatements> statements(String symbol) async {
    await _wait();
    _check(symbol);
    final m = await metrics(symbol);
    final rev = m.revenueTtm ?? 1e9;
    final ni = m.netIncomeTtm ?? 1e8;
    final year = DateTime.now().year - 1;
    return FinancialStatements(
      symbol: symbol,
      years: [
        for (var k = 0; k < 4; k++)
          AnnualFinancials(
            fiscalYear: year - k,
            periodEnd: DateTime(year - k, 12, 31),
            revenue: rev * (1 - 0.08 * k),
            netIncome: ni * (1 - 0.1 * k),
            totalAssets: rev * 1.3,
            totalLiabilities: rev * 0.8,
            equity: rev * 0.5,
            operatingCashFlow: ni * 1.2,
          ),
      ],
    );
  }

  @override
  Future<List<StockCandidate>> search(String query) async {
    await _wait();
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return const [];
    final names = {
      'AAPL': 'Apple Inc.',
      'MSFT': 'Microsoft Corporation',
      'NVDA': 'NVIDIA Corporation',
      'OTP': 'OTP Bank Nyrt.',
    };
    final out = <StockCandidate>[];
    for (final e in names.entries) {
      final exact = e.key.toLowerCase() == q;
      final hit = exact || e.key.toLowerCase().startsWith(q) || e.value.toLowerCase().contains(q);
      if (hit) out.add(StockCandidate(symbol: e.key, companyName: e.value, confidence: exact ? 1 : 0.8));
    }
    out.sort((a, b) => b.confidence.compareTo(a.confidence));
    return out;
  }

  @override
  Future<StockQuote> quote(String symbol) async {
    await _wait();
    _check(symbol);
    final now = DateTime.now();
    return switch (symbol) {
      'AAPL' => StockQuote(
        symbol: symbol,
        price: 231.45,
        change: 2.15,
        changePercent: 0.94,
        open: 229.80,
        high: 232.10,
        low: 228.95,
        previousClose: 229.30,
        timestamp: now,
      ),
      'MSFT' => StockQuote(
        symbol: symbol,
        price: 512.30,
        change: -3.70,
        changePercent: -0.72,
        open: 515.00,
        high: 517.40,
        low: 510.10,
        previousClose: 516.00,
        timestamp: now,
      ),
      'NVDA' => StockQuote(
        symbol: symbol,
        price: 187.60,
        change: 5.42,
        changePercent: 2.98,
        open: 182.50,
        high: 188.90,
        low: 181.70,
        previousClose: 182.18,
        timestamp: now,
      ),
      _ => StockQuote(
        symbol: symbol,
        price: 28450,
        change: 310,
        changePercent: 1.10,
        open: 28200,
        high: 28600,
        low: 28100,
        previousClose: 28140,
        timestamp: now,
      ),
    };
  }

  @override
  Future<CompanyProfile> profile(String symbol) async {
    await _wait();
    _check(symbol);
    return switch (symbol) {
      'AAPL' => CompanyProfile(
        symbol: symbol,
        name: 'Apple Inc.',
        exchange: 'NASDAQ',
        currency: 'USD',
        country: 'US',
        industry: 'Technology',
        sector: 'Consumer Electronics',
        isin: 'US0378331005',
        website: 'https://www.apple.com',
        description: 'Apple designs, manufactures and markets smartphones, personal computers, tablets, wearables and accessories, and sells services (App Store, iCloud, Apple Music, Apple TV+) worldwide.',
        ipoDate: DateTime(1980, 12, 12),
        marketCap: 3.45e12,
        sharesOutstanding: 14.9e9,
        employees: 164000,
        ceo: 'Tim Cook',
        headquarters: 'Cupertino, California, USA',
      ),
      'MSFT' => CompanyProfile(
        symbol: symbol,
        name: 'Microsoft Corporation',
        exchange: 'NASDAQ',
        currency: 'USD',
        country: 'US',
        industry: 'Technology',
        sector: 'Software',
        isin: 'US5949181045',
        website: 'https://www.microsoft.com',
        description:
            'Microsoft develops and markets software, cloud services (Azure), devices and solutions worldwide.',
        ipoDate: DateTime(1986, 3, 13),
        marketCap: 3.81e12,
        sharesOutstanding: 7.43e9,
        employees: 228000,
        ceo: 'Satya Nadella',
        headquarters: 'Redmond, Washington, USA',
      ),
      'NVDA' => CompanyProfile(
        symbol: symbol,
        name: 'NVIDIA Corporation',
        exchange: 'NASDAQ',
        currency: 'USD',
        country: 'US',
        industry: 'Semiconductors',
        sector: 'Semiconductors',
        isin: 'US67066G1040',
        website: 'https://www.nvidia.com',
        description: 'NVIDIA develops graphics processors, data-center accelerators and AI platforms.',
        ipoDate: DateTime(1999, 1, 22),
        marketCap: 4.57e12,
        sharesOutstanding: 24.4e9,
        employees: 36000,
        ceo: 'Jensen Huang',
        headquarters: 'Santa Clara, California, USA',
      ),
      _ => CompanyProfile(
        symbol: symbol,
        name: 'OTP Bank Nyrt.',
        exchange: 'BSE',
        currency: 'HUF',
        country: 'HU',
        industry: 'Banking',
        sector: 'Financials',
        isin: 'HU0000061726',
        website: 'https://www.otpbank.hu',
        description: 'OTP Group is one of the leading independent banking groups in Central and Eastern Europe, present in 11 countries.',
        ipoDate: DateTime(1995, 8, 10),
        marketCap: 7.97e12,
        sharesOutstanding: 280e6,
        employees: 41000,
        ceo: 'Csányi Sándor',
        headquarters: 'Budapest, Hungary',
      ),
    };
  }

  @override
  Future<StockMetrics> metrics(String symbol) async {
    await _wait();
    _check(symbol);
    return switch (symbol) {
      'AAPL' => StockMetrics(
        peTrailing: 35.2,
        peForward: 30.1,
        pb: 52.3,
        ps: 8.6,
        peg: 2.9,
        eps: 6.58,
        dividendYield: 0.45,
        dividendPerShare: 1.04,
        payoutRatio: 15.8,
        beta: 1.21,
        week52High: 237.23,
        week52Low: 169.21,
        week52HighDate: DateTime(2026, 7, 15),
        week52LowDate: DateTime(2025, 11, 4),
        averageVolume10d: 52.3e6,
        revenueTtm: 401e9,
        netIncomeTtm: 101e9,
        grossMargin: 46.5,
        operatingMargin: 31.8,
        netMargin: 25.2,
        roe: 151.0,
        roa: 28.4,
        debtToEquity: 1.54,
        currentRatio: 0.92,
        revenueGrowth: 6.1,
        epsGrowth: 9.8,
      ),
      'MSFT' => StockMetrics(
        peTrailing: 37.9,
        peForward: 32.4,
        pb: 11.8,
        ps: 13.9,
        peg: 2.4,
        eps: 13.52,
        dividendYield: 0.65,
        dividendPerShare: 3.32,
        payoutRatio: 24.6,
        beta: 0.93,
        week52High: 555.45,
        week52Low: 344.79,
        averageVolume10d: 21.0e6,
        revenueTtm: 281e9,
        netIncomeTtm: 101e9,
        grossMargin: 69.1,
        operatingMargin: 45.2,
        netMargin: 36.0,
        roe: 33.4,
        roa: 18.7,
        debtToEquity: 0.33,
        currentRatio: 1.35,
        revenueGrowth: 15.0,
        epsGrowth: 16.3,
      ),
      'NVDA' => StockMetrics(
        peTrailing: 52.4,
        peForward: 38.7,
        pb: 48.0,
        ps: 27.5,
        peg: 1.3,
        eps: 3.58,
        dividendYield: 0.02,
        dividendPerShare: 0.04,
        payoutRatio: 1.1,
        beta: 2.12,
        week52High: 195.62,
        week52Low: 86.62,
        averageVolume10d: 180e6,
        revenueTtm: 165e9,
        netIncomeTtm: 87e9,
        grossMargin: 70.1,
        operatingMargin: 58.5,
        netMargin: 52.4,
        roe: 109.0,
        roa: 65.3,
        debtToEquity: 0.12,
        currentRatio: 3.4,
        revenueGrowth: 69.0,
        epsGrowth: 72.0,
      ),
      _ => StockMetrics(
        peTrailing: 7.4,
        pb: 1.4,
        eps: 3845,
        dividendYield: 3.4,
        dividendPerShare: 964,
        payoutRatio: 25.1,
        beta: 1.35,
        week52High: 30200,
        week52Low: 17500,
        averageVolume10d: 450e3,
        revenueTtm: 2.6e12,
        netIncomeTtm: 1.08e12,
        netMargin: 41.5,
        roe: 22.1,
        roa: 2.6,
        revenueGrowth: 12.3,
        epsGrowth: 9.1,
      ),
    };
  }

  @override
  Future<List<NewsItem>> news(String symbol, {int limit = 20}) async {
    await _wait();
    _check(symbol);
    final now = DateTime.now();
    return [
      NewsItem(
        headline: 'Demo: company reports quarterly results above expectations',
        url: 'https://example.com/hir1',
        publishedAt: now.subtract(const Duration(hours: 5)),
        source: 'Demo Newswire',
        summary: 'This is a sample news item that only demonstrates the interface. It is not real information.',
      ),
      NewsItem(
        headline: 'Demo: analysts raise price target',
        url: 'https://example.com/hir2',
        publishedAt: now.subtract(const Duration(days: 1, hours: 2)),
        source: 'Demo Financial Daily',
      ),
      NewsItem(
        headline: 'Demo: new product announcement expected next month',
        url: 'https://example.com/hir3',
        publishedAt: now.subtract(const Duration(days: 3)),
        source: 'Demo Tech Portal',
      ),
    ].take(limit).toList();
  }

  @override
  Future<AnalystConsensus?> consensus(String symbol) async {
    await _wait();
    _check(symbol);
    return AnalystConsensus(
      period: DateTime(DateTime.now().year, DateTime.now().month),
      strongBuy: 14,
      buy: 22,
      hold: 9,
      sell: 2,
      strongSell: 0,
    );
  }
}
