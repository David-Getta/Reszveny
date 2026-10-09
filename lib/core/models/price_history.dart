/// Egy napi záróár-pont.
class PricePoint {
  const PricePoint({required this.time, required this.close, this.open, this.high, this.low, this.volume});

  final DateTime time;
  final double close;
  final double? open;
  final double? high;
  final double? low;
  final double? volume;
}

/// Napi árfolyam-történet (legfeljebb 5 év). A rövidebb időtávokat ebből
/// szűrjük a kliensen.
class PriceHistory {
  const PriceHistory({required this.symbol, required this.points});

  final String symbol;

  /// Időrendben növekvő.
  final List<PricePoint> points;

  bool get isEmpty => points.isEmpty;

  List<PricePoint> lastDays(int days) {
    if (points.isEmpty) return const [];
    final from = points.last.time.subtract(Duration(days: days));
    return points.where((p) => !p.time.isBefore(from)).toList();
  }
}
