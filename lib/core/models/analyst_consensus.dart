/// Elemzői ajánlások összesítése egy adott hónapra.
class AnalystConsensus {
  const AnalystConsensus({
    required this.period,
    this.strongBuy = 0,
    this.buy = 0,
    this.hold = 0,
    this.sell = 0,
    this.strongSell = 0,
  });

  final DateTime period;
  final int strongBuy;
  final int buy;
  final int hold;
  final int sell;
  final int strongSell;

  int get total => strongBuy + buy + hold + sell + strongSell;

  /// 1 (erős eladás) .. 5 (erős vétel) közötti súlyozott átlag.
  double? get score {
    if (total == 0) return null;
    return (strongBuy * 5 + buy * 4 + hold * 3 + sell * 2 + strongSell * 1) / total;
  }

  Rating? get rating {
    final s = score;
    if (s == null) return null;
    if (s >= 4.5) return Rating.strongBuy;
    if (s >= 3.5) return Rating.buy;
    if (s >= 2.5) return Rating.hold;
    if (s >= 1.5) return Rating.sell;
    return Rating.strongSell;
  }
}

enum Rating { strongBuy, buy, hold, sell, strongSell }
