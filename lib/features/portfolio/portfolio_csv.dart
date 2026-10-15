import 'add_lot_dialog.dart' show parseDecimal;
import 'portfolio_store.dart';

/// A portfólió vételei CSV-ben (táblázatkezelőbe, másik appba):
/// `symbol,quantity,price,currency,date`, ponttal mint tizedesjel.
String portfolioCsv(List<PortfolioLot> lots) {
  String n(double v) => v == v.roundToDouble() ? v.toStringAsFixed(0) : v.toString();
  final b = StringBuffer('symbol,quantity,price,currency,date\n');
  for (final l in lots) {
    b.writeln(
      [l.symbol, n(l.quantity), n(l.price), l.currency, l.date?.toIso8601String().substring(0, 10) ?? ''].join(','),
    );
  }
  return b.toString();
}

/// Egy beolvasott sor (még nem került a portfólióba).
class ImportedLot {
  const ImportedLot({
    required this.symbol,
    required this.quantity,
    required this.price,
    required this.currency,
    this.date,
  });

  final String symbol;
  final double quantity;
  final double price;
  final String currency;
  final DateTime? date;
}

/// A beolvasás eredménye: a jó sorok és a kihagyottak száma.
class CsvImport {
  const CsvImport(this.lots, this.skipped);

  final List<ImportedLot> lots;
  final int skipped;
}

final _symbol = RegExp(r'^[A-Z0-9][A-Z0-9.\-:^]{0,14}$');
final _currency = RegExp(r'^[A-Z]{3}$');

/// Beillesztett sorok beolvasása, megengedően: a mezőelválasztó tabulátor,
/// pontosvessző (ilyenkor a tizedesjel lehet vessző) vagy vessző; a fejléc
/// elhagyható; a pénznem és a dátum is elhagyható (pénznem nélkül [defaultCurrency]).
CsvImport parsePortfolioCsv(String text, {String defaultCurrency = 'USD'}) {
  final lots = <ImportedLot>[];
  var skipped = 0;
  var first = true;
  for (final raw in text.split(RegExp(r'\r?\n'))) {
    final line = raw.trim();
    if (line.isEmpty) continue;
    final sep = line.contains('\t') ? '\t' : (line.contains(';') ? ';' : ',');
    final f = [for (final c in line.split(sep)) c.trim().replaceAll('"', '')];
    final symbol = f.isNotEmpty ? f[0].toUpperCase() : '';
    final quantity = f.length > 1 ? parseDecimal(f[1]) : null;
    final price = f.length > 2 ? parseDecimal(f[2]) : null;
    final ok = _symbol.hasMatch(symbol) && quantity != null && quantity > 0 && price != null && price > 0;
    if (!ok) {
      // Az első rossz sor a fejléc lehet; azt nem számoljuk hibának.
      if (!first) skipped++;
      first = false;
      continue;
    }
    first = false;
    final ccy = f.length > 3 && _currency.hasMatch(f[3].toUpperCase()) ? f[3].toUpperCase() : defaultCurrency;
    final date = f.length > 4 ? DateTime.tryParse(f[4]) : null;
    lots.add(ImportedLot(symbol: symbol, quantity: quantity, price: price, currency: ccy, date: date));
  }
  return CsvImport(lots, skipped);
}
