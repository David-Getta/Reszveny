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

  /// Az időszak az utolsó [days] napra, a kiindulóponttal együtt: az eleje az utolsó
  /// záróár a céldátumon vagy előtte (ünnepnap után is a tényleges előző záráshoz mér,
  /// mint a hozamok); ha a történet rövidebb, az első pont.
  List<PricePoint> since(int days) {
    if (points.isEmpty) return const [];
    final target = points.last.time.subtract(Duration(days: days));
    var start = 0;
    for (var i = 0; i < points.length; i++) {
      if (points[i].time.isAfter(target)) break;
      start = i;
    }
    return points.sublist(start);
  }

  List<PricePoint> lastDays(int days) {
    if (points.isEmpty) return const [];
    final from = points.last.time.subtract(Duration(days: days));
    return points.where((p) => !p.time.isBefore(from)).toList();
  }
}
