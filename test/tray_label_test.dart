import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/core/util/formatters.dart';
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
  });
}
