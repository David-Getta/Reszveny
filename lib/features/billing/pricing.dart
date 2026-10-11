import 'package:intl/intl.dart';

/// Alapárak USD-ben. A boltokban (App Store, Play) az árszinteket ebből kell
/// beállítani; a bolt minden régióban a helyi pénznemben mutatja. A demó bolt
/// és az előnézet ebből számol helyi árat az ECB-árfolyammal, kerekítve.
class Pricing {
  Pricing._();

  static const Map<String, double> baseUsd = {
    'whatstock.sub.normal': 7.99,
    // A Pro és a Max havi díja kb. 20 %-kal magasabb, mint az éves díj egy hónapra
    // jutó része, így az éves 2 hónappal olcsóbb. A Max havonta is olcsóbb
    // elemzésenként a Pro-nál (41,99 / 40 < 18,99 / 18).
    'whatstock.sub.pro': 18.99,
    'whatstock.sub.max': 41.99,
    'whatstock.sub.ultra': 64.99,
    // Éves: 10 havi díj (2 hónap ingyen), havonta ≈ a korábbi havi ár (15,83 és 35,00).
    // Az éves Max a legolcsóbb elemzésenként az összes csomag közül.
    'whatstock.sub.pro.year': 189.99,
    'whatstock.sub.max.year': 419.99,
    'whatstock.pack.5': 4.99,
    'whatstock.pack.20': 17.99,
    'whatstock.pack.50': 39.99,
  };

  /// Pénznemek, ahol nincs tizedes (egész összegek, „szép” kerekítéssel).
  static const Set<String> _wholeUnit = {'HUF', 'JPY', 'KRW', 'IDR', 'ISK', 'CLP', 'VND', 'TWD'};

  /// Helyi ár: átváltás, majd a pénznem szokásos „pszichológiai” kerekítése.
  /// Ha nincs árfolyam, az USD-ár marad.
  static double localize(double usd, String currency, double? rateFromUsd) {
    final c = currency.toUpperCase();
    if (c == 'USD' || rateFromUsd == null) return usd;
    final raw = usd * rateFromUsd;
    if (_wholeUnit.contains(c)) {
      // Nagy névértékű pénznemek: felfelé a következő százasra, „…90” végződéssel
      // (2 876 → 2 890, 14 396 → 14 390); ezres alatt tízesre, „…9”-re.
      if (raw >= 1000) return ((raw / 100).ceil() * 100 - 10).toDouble();
      if (raw >= 100) return ((raw / 10).ceil() * 10 - 1).toDouble();
      return raw.roundToDouble();
    }
    if (c == 'INR' || c == 'CZK' || c == 'RUB' || c == 'PHP' || c == 'THB' || c == 'MXN' || c == 'ZAR') {
      // Közepes névérték: egészre, „…9” végződéssel.
      final rounded = raw.round();
      return (rounded ~/ 10 * 10 + 9).toDouble();
    }
    // Kis névérték (EUR, GBP, CHF, PLN, RON, SEK…): x,99.
    return raw.floor() + 0.99;
  }

  /// A helyi pénznem szokásos formázása (pl. „14 990 Ft”, „€39.99”).
  static String format(double amount, String currency, String locale) {
    final c = currency.toUpperCase();
    final decimals = _wholeUnit.contains(c) ? 0 : 2;
    try {
      return NumberFormat.simpleCurrency(locale: locale, name: c, decimalDigits: decimals).format(amount);
    } catch (_) {
      return '${amount.toStringAsFixed(decimals)} $c';
    }
  }
}
