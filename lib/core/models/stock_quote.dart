/// Pillanatnyi árfolyam-adatok.
class StockQuote {
  const StockQuote({
    required this.symbol,
    required this.price,
    this.change,
    this.changePercent,
    this.open,
    this.high,
    this.low,
    this.previousClose,
    this.timestamp,
  });

  final String symbol;
  final double price;
  final double? change;
  final double? changePercent;
  final double? open;
  final double? high;
  final double? low;
  final double? previousClose;
  final DateTime? timestamp;

  bool get isUp => (change ?? 0) >= 0;
}
