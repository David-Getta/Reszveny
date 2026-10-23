import '../../app_services.dart';

/// Tickerváltás (pl. átnevezett cég, FB → META) mindenhol, ahol a felhasználó a
/// tickert használja: portfólió, riasztások, jegyzet, kedvencek, célarányok és
/// saját listák.
Future<void> changeTicker(AppServices services, String from, String to) async {
  await services.portfolio.renameSymbol(from, to);
  await services.alerts.renameSymbol(from, to);
  await services.notes.renameSymbol(from, to);
  await services.preferences.renameSymbol(from, to);
}
