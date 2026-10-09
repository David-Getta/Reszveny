/// A képfelismerés egy jelöltje: mit gondolunk, melyik részvény van a képen.
class StockCandidate {
  const StockCandidate({
    required this.symbol,
    required this.companyName,
    this.exchange,
    this.confidence = 0,
    this.evidence,
  });

  /// Tőzsdei ticker, nagybetűvel (pl. `AAPL`, `OTP`).
  final String symbol;
  final String companyName;

  /// Tőzsde rövidítése, ha ismert (pl. `NASDAQ`, `BSE`).
  final String? exchange;

  /// 0..1 közötti megbízhatóság.
  final double confidence;

  /// Mi alapján döntöttünk (pl. "a képen az Apple logó látható").
  final String? evidence;

  bool get isConfident => confidence >= 0.8;

  String get displayName => exchange == null ? '$symbol · $companyName' : '$symbol ($exchange) · $companyName';

  @override
  String toString() => 'StockCandidate($symbol, $companyName, $confidence)';
}
