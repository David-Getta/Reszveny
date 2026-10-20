import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/portfolio/portfolio_valuation.dart';
import 'package:reszveny/features/shell/app_shell.dart';

void main() {
  test('a favorite in the menu bar / tray menu: price and the day’s change with an arrow', () {
    final fmt = Fmt('en');
    expect(
      trayStockLabel('AAPL', const StockQuote(symbol: 'AAPL', price: 231.45, changePercent: 0.94), fmt),
      'AAPL   231.45   ▲ 0.94%',
    );
    expect(
      trayStockLabel('MSFT', const StockQuote(symbol: 'MSFT', price: 512.3, changePercent: -0.72), fmt),
      'MSFT   512.30   ▼ 0.72%',
    );
    expect(trayStockLabel('OTP', null, fmt), 'OTP');
    // Közeli gyorsjelentés a sor végén.
    expect(
      trayStockLabel(
        'NVDA',
        const StockQuote(symbol: 'NVDA', price: 187.6, changePercent: 2.98),
        fmt,
        earningsWhen: 'Tomorrow',
      ),
      'NVDA   187.60   ▲ 2.98%   📅 Tomorrow',
    );
  });

  test('the portfolio line: the day’s change in percent and amount', () {
    final fmt = Fmt('en');
    final p = Position(
      symbol: 'AAPL',
      currency: 'USD',
      lots: const [PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD')],
    );
    final s = PortfolioSnapshot.compute(
      [p],
      quotes: {'AAPL': const StockQuote(symbol: 'AAPL', price: 102, change: 2)},
      rate: (_, _) => 1,
      currency: 'USD',
    );
    expect(trayPortfolioLabel('Portfolio', s, fmt), 'Portfolio   ▲ 2.00%   +20.00 USD');
    final none = PortfolioSnapshot.compute([p], quotes: const {}, rate: (_, _) => 1, currency: 'USD');
    expect(trayPortfolioLabel('Portfolio', none, fmt), 'Portfolio');
  });
}
