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
    return sinceDate(daysBefore(points.last.time, days));
  }

  /// Az időszak a [target] naptól (az utolsó záróár azon a napon vagy előtte).
  List<PricePoint> sinceDate(DateTime target) {
    if (points.isEmpty) return const [];
    var start = 0;
    for (var i = 0; i < points.length; i++) {
      if (points[i].time.isAfter(target)) break;
      start = i;
    }
    return points.sublist(start);
  }

  List<PricePoint> lastDays(int days) {
    if (points.isEmpty) return const [];
    final from = daysBefore(points.last.time, days);
    return points.where((p) => !p.time.isBefore(from)).toList();
  }
}

/// [days] naptári nappal korábbi nap (éjfél): naptári számolással, mert a nyári
/// időszámítás váltásakor 24 óra kivonása 23:00-ra vagy 01:00-ra vinne.
DateTime daysBefore(DateTime t, int days) => DateTime(t.year, t.month, t.day - days);

/// [years] évvel korábbi nap; február 29-ről 28-ra (nem március 1-jére).
DateTime yearsBefore(DateTime t, int years) {
  final y = t.year - years;
  final last = DateTime(y, t.month + 1, 0).day;
  return DateTime(y, t.month, t.day > last ? last : t.day);
}
