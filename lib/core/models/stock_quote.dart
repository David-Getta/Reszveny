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

  /// Gyorsítótárhoz (offline megjelenítés).
  Map<String, dynamic> toJson() => {
    'symbol': symbol,
    'price': price,
    'change': ?change,
    'changePercent': ?changePercent,
    'open': ?open,
    'high': ?high,
    'low': ?low,
    'previousClose': ?previousClose,
    if (timestamp != null) 'timestamp': timestamp!.toIso8601String(),
  };

  factory StockQuote.fromJson(Map<String, dynamic> j) => StockQuote(
    symbol: j['symbol'] as String,
    price: (j['price'] as num).toDouble(),
    change: (j['change'] as num?)?.toDouble(),
    changePercent: (j['changePercent'] as num?)?.toDouble(),
    open: (j['open'] as num?)?.toDouble(),
    high: (j['high'] as num?)?.toDouble(),
    low: (j['low'] as num?)?.toDouble(),
    previousClose: (j['previousClose'] as num?)?.toDouble(),
    timestamp: DateTime.tryParse(j['timestamp'] as String? ?? ''),
  );
}
