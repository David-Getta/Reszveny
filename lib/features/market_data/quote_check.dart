import '../../core/errors.dart';
import 'market_data_provider.dart';

/// Van-e árfolyam a tickerre: „nincs ár” vagy a demóban nem elérhető papír esetén nem; más
/// hibánál (pl. hálózat) igen – akkor a részvényoldal mutatja az okát (vagy a mentett adatot).
/// Egy elgépelt vagy nem jegyzett, ticker-szerű szó („amazon”) így nem nyit hibákkal teli oldalt.
Future<bool> hasQuote(MarketDataProvider marketData, String symbol) async {
  try {
    return (await marketData.quote(symbol)).price > 0;
  } on AppException catch (e) {
    return e.code != AppErrorCode.noQuote && e.code != AppErrorCode.demoUnsupportedSymbol;
  } catch (_) {
    return true;
  }
}
