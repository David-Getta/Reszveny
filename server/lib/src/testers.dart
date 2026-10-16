import 'plans.dart';

/// Tesztelői kódok: a tulajdonos és a tesztelők ezzel fizetés nélkül kapnak
/// csomagot, a beállításokban, az ajánlói kód helyén beváltva.
///
/// A `TESTER_CODES` környezeti változó vesszővel (vagy sortöréssel) elválasztott
/// bejegyzései: `KÓD:Név[:csomag][:napok][:fiókok]`, pl. `DAVID-TESZT:Dávid:max:365:3`.
/// A csomag alapból `max`, a napok száma 90, a fiókoké 3. A kód visszavonása:
/// törölni a változóból (a már beváltott csomag a lejáratáig megmarad).
class TesterCode {
  const TesterCode({required this.code, required this.label, this.tier = 'max', this.days = 90, this.maxAccounts = 3});

  final String code;
  final String label;
  final String tier;
  final int days;
  final int maxAccounts;
}

class TesterBook {
  const TesterBook([this._codes = const {}]);

  final Map<String, TesterCode> _codes;

  bool get enabled => _codes.isNotEmpty;
  int get length => _codes.length;

  TesterCode? find(String? code) => code == null ? null : _codes[code.trim().toUpperCase()];

  /// A hibás bejegyzéseket kihagyja (a szerver naplójába írja őket).
  static TesterBook parse(String? raw, {void Function(String message)? onWarning}) {
    final out = <String, TesterCode>{};
    for (final entry in (raw ?? '').split(RegExp(r'[,\n]'))) {
      if (entry.trim().isEmpty) continue;
      final parts = entry.split(':').map((p) => p.trim()).toList();
      final code = parts[0].toUpperCase();
      if (code.length < 6 || code.contains(' ')) {
        onWarning?.call('Túl rövid vagy hibás tesztelői kód kihagyva: "${parts[0]}"');
        continue;
      }
      final tier = parts.length > 2 && parts[2].isNotEmpty ? parts[2].toLowerCase() : 'max';
      if (PlanSpec.byTier(tier) == null || tier == 'trial') {
        onWarning?.call('Ismeretlen csomag a(z) $code tesztelői kódnál: "$tier"');
        continue;
      }
      out[code] = TesterCode(
        code: code,
        label: parts.length > 1 && parts[1].isNotEmpty ? parts[1] : code,
        tier: tier,
        days: parts.length > 3 ? int.tryParse(parts[3]) ?? 90 : 90,
        maxAccounts: parts.length > 4 ? int.tryParse(parts[4]) ?? 3 : 3,
      );
    }
    return TesterBook(out);
  }
}
