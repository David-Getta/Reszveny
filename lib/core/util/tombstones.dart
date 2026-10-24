/// Törlési jelzések a szinkronhoz: a törölt tétel azonosítója a törlés idejével
/// (UTC), hogy egy másik eszköz régi példánya ne támassza fel. [tombstoneDays]
/// napnál régebbi jelzés elhagyható (addigra minden eszköz szinkronizált).
library;

const tombstoneDays = 180;

/// Legfeljebb ennyi (a legújabb) jelzés megy tovább, hogy egy nagy import
/// többszöri visszavonása se fújja fel a szinkron-csomagot (a szerveren 2 MB);
/// egy több ezer tételes import visszavonása is elfér benne.
const maxTombstones = 5000;

/// A jelzések JSON-alakja, a lejártak nélkül, a legújabbak közül [maxTombstones].
Map<String, String> tombstonesJson(Map<String, DateTime> deleted, {DateTime? now}) {
  final cutoff = (now ?? DateTime.now()).toUtc().subtract(const Duration(days: tombstoneDays));
  final live = [
    for (final e in deleted.entries)
      if (e.value.isAfter(cutoff)) e,
  ];
  if (live.length > maxTombstones) {
    live.sort((a, b) => b.value.compareTo(a.value));
    live.removeRange(maxTombstones, live.length);
  }
  return {for (final e in live) e.key: e.value.toUtc().toIso8601String()};
}

/// Egy változás vagy törlés ideje a szinkronhoz. A napnál távolabbi jövőbeli idő
/// (nagyon rossz órájú eszköz, kézzel írt mentés: „2999-01-01”) nem érvényes – az a
/// változat különben minden későbbit legyőzne, és a törlése sem maradna meg; a pár
/// órás óraeltérés belefér. `null`, ha nincs, nem dátum, vagy ilyen jövőbeli.
DateTime? parseStamp(Object? v, {DateTime? now}) {
  final t = v == null ? null : DateTime.tryParse('$v');
  if (t == null) return null;
  return t.isAfter((now ?? DateTime.now()).toUtc().add(const Duration(days: 1))) ? null : t;
}

/// Jelzések beolvasása (a hibás és a távoli jövőbeli bejegyzés kimarad).
Map<String, DateTime> parseTombstones(Object? j) => {
  if (j is Map)
    for (final e in j.entries) '${e.key}': ?parseStamp(e.value),
};

/// Két oldal jelzéseinek uniója; azonosítónként a későbbi törlés.
Map<String, DateTime> unionTombstones(Object? a, Object? b) {
  final out = parseTombstones(a);
  for (final e in parseTombstones(b).entries) {
    if (out[e.key] case final at? when !e.value.isAfter(at)) continue;
    out[e.key] = e.value;
  }
  return out;
}
