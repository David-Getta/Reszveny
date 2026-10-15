import 'dart:math' as math;

/// AI-elemzés egy részvényről: szekciókra bontott, a felhasználó nyelvén
/// megírt átfogó kép, friss hírek összefoglalásával és forrásokkal.
class StockReport {
  const StockReport({
    required this.symbol,
    required this.headline,
    required this.sections,
    required this.generatedAt,
    this.sources = const [],
    this.language,
    this.outlook,
    this.promptVersion,
    this.nextEarnings,
  });

  final String symbol;

  /// A következő gyorsjelentés napja az elemzés idején (ha ismert): ha azóta
  /// eltelt, az elemzés még a friss eredmények előtt készült.
  final DateTime? nextEarnings;

  /// Ugyanez az elemzés a következő gyorsjelentés napjával.
  StockReport withNextEarnings(DateTime? date) => StockReport(
    symbol: symbol,
    headline: headline,
    sections: sections,
    generatedAt: generatedAt,
    sources: sources,
    language: language,
    outlook: outlook,
    promptVersion: promptVersion,
    nextEarnings: date,
  );

  /// Egy-két mondatos lényeg (TL;DR).
  final String headline;
  final List<ReportSection> sections;
  final List<ReportSource> sources;
  final DateTime generatedAt;

  /// A nyelv angol neve, amin az elemzés készült (pl. `Hungarian`).
  final String? language;

  /// A kilátások számszerű része (forgatókönyvek, kulcsszintek, események,
  /// piaci hangulat), amit a felület grafikusan is megjelenít.
  final ReportOutlook? outlook;

  /// A prompt verziója, amivel az elemzés készült (pl. `v2.1`).
  final String? promptVersion;

  Map<String, dynamic> toJson() => {
    'symbol': symbol,
    'headline': headline,
    'sections': sections.map((s) => s.toJson()).toList(),
    'sources': sources.map((s) => s.toJson()).toList(),
    'generated_at': generatedAt.toUtc().toIso8601String(),
    'language': language,
    if (outlook != null) 'outlook_data': outlook!.toJson(),
    'prompt_version': ?promptVersion,
    if (nextEarnings != null) 'next_earnings': nextEarnings!.toIso8601String().substring(0, 10),
  };

  factory StockReport.fromJson(Map<String, dynamic> j) => StockReport(
    symbol: j['symbol'] as String,
    headline: j['headline'] as String? ?? '',
    sections: ((j['sections'] as List?) ?? const [])
        .map((s) => ReportSection.fromJson((s as Map).cast<String, dynamic>()))
        .toList(),
    sources: ((j['sources'] as List?) ?? const [])
        .map((s) => ReportSource.fromJson((s as Map).cast<String, dynamic>()))
        .toList(),
    generatedAt: DateTime.tryParse(j['generated_at'] as String? ?? '') ?? DateTime.now(),
    language: j['language'] as String?,
    outlook: j['outlook_data'] is Map
        ? ReportOutlook.fromJson((j['outlook_data'] as Map).cast<String, dynamic>())
        : null,
    promptVersion: j['prompt_version'] as String?,
    nextEarnings: DateTime.tryParse(j['next_earnings'] as String? ?? ''),
  );
}

double? _num(Object? v) => v is num ? v.toDouble() : (v is String ? double.tryParse(v) : null);

enum ScenarioKind {
  bull,
  base,
  bear;

  static ScenarioKind? parse(Object? s) => ScenarioKind.values.asNameMap()[s.toString().trim().toLowerCase()];
}

/// Egy forgatókönyv: valószínűség, ársáv a részvény devizájában, időtáv.
class Scenario {
  const Scenario({
    required this.kind,
    required this.probability,
    this.priceLow,
    this.priceHigh,
    this.horizon = '',
    this.summary = '',
  });

  final ScenarioKind kind;

  /// Százalék (0–100).
  final double probability;
  final double? priceLow;
  final double? priceHigh;
  final String horizon;
  final String summary;

  Map<String, dynamic> toJson() => {
    'kind': kind.name,
    'probability': probability,
    'price_low': priceLow,
    'price_high': priceHigh,
    'horizon': horizon,
    'summary': summary,
  };

  static Scenario? fromJson(Map<String, dynamic> j) {
    final kind = ScenarioKind.parse(j['kind']);
    final p = _num(j['probability']);
    if (kind == null || p == null) return null;
    var lo = _num(j['price_low']);
    var hi = _num(j['price_high']);
    if (lo != null && hi != null && lo > hi) (lo, hi) = (hi, lo);
    return Scenario(
      kind: kind,
      probability: p.clamp(0, 100).toDouble(),
      priceLow: lo,
      priceHigh: hi,
      horizon: (j['horizon'] as String? ?? '').trim(),
      summary: (j['summary'] as String? ?? '').trim(),
    );
  }
}

enum KeyLevelKind {
  support,
  resistance,
  anchor;

  static KeyLevelKind parse(Object? s) =>
      KeyLevelKind.values.asNameMap()[s.toString().trim().toLowerCase()] ?? KeyLevelKind.anchor;
}

class KeyLevel {
  const KeyLevel({required this.price, required this.kind, this.label = ''});

  final double price;
  final KeyLevelKind kind;
  final String label;

  Map<String, dynamic> toJson() => {'price': price, 'kind': kind.name, 'label': label};

  static KeyLevel? fromJson(Map<String, dynamic> j) {
    final p = _num(j['price']);
    if (p == null || p <= 0) return null;
    return KeyLevel(price: p, kind: KeyLevelKind.parse(j['kind']), label: (j['label'] as String? ?? '').trim());
  }
}

/// Közelgő esemény; a dátum lehet pontos (`2026-10-28`) vagy hozzávetőleges.
class Catalyst {
  const Catalyst({required this.date, required this.event});

  final String date;
  final String event;

  /// Rendezéshez: a pontos dátum, ha értelmezhető.
  DateTime? get parsedDate => DateTime.tryParse(date);

  Map<String, dynamic> toJson() => {'date': date, 'event': event};

  static Catalyst? fromJson(Map<String, dynamic> j) {
    final event = (j['event'] as String? ?? '').trim();
    if (event.isEmpty) return null;
    return Catalyst(date: (j['date'] as String? ?? '').trim(), event: event);
  }
}

class ReportOutlook {
  const ReportOutlook({
    this.currentPrice,
    this.currency,
    this.scenarios = const [],
    this.keyLevels = const [],
    this.catalysts = const [],
    this.marketMood,
    this.marketMoodReason = '',
    this.mostLikelyReason = '',
    this.longTerm,
  });

  final double? currentPrice;
  final String? currency;
  final List<Scenario> scenarios;
  final List<KeyLevel> keyLevels;
  final List<Catalyst> catalysts;

  /// −2 (nagyon pesszimista) … +2 (nagyon optimista).
  final int? marketMood;
  final String marketMoodReason;

  /// Egy mondat arról, miért a legvalószínűbb forgatókönyv a legvalószínűbb.
  final String mostLikelyReason;

  /// Hosszú távú kilátás (3, 5, 10 év).
  final LongTermOutlook? longTerm;

  bool get isEmpty =>
      scenarios.isEmpty && keyLevels.isEmpty && catalysts.isEmpty && marketMood == null && longTerm == null;

  /// A forgatókönyvek valószínűségeinek összege (ideálisan ~100).
  double get probabilitySum => scenarios.fold(0, (s, e) => s + e.probability);

  /// A legnagyobb valószínűségű forgatókönyv; holtversenynél az alap.
  Scenario? get mostLikely {
    Scenario? best;
    for (final s in scenarios) {
      if (best == null ||
          s.probability > best.probability ||
          (s.probability == best.probability && s.kind == ScenarioKind.base)) {
        best = s;
      }
    }
    return best;
  }

  Map<String, dynamic> toJson() => {
    'current_price': currentPrice,
    'currency': currency,
    'scenarios': scenarios.map((s) => s.toJson()).toList(),
    'key_levels': keyLevels.map((k) => k.toJson()).toList(),
    'catalysts': catalysts.map((c) => c.toJson()).toList(),
    'market_mood': marketMood,
    'market_mood_reason': marketMoodReason,
    'most_likely_reason': mostLikelyReason,
    if (longTerm != null) 'long_term': longTerm!.toJson(),
  };

  static List<T> _list<T>(Object? v, T? Function(Map<String, dynamic>) f) => [
    for (final e in (v is List ? v : const []))
      if (e is Map) ?f(e.cast<String, dynamic>()),
  ];

  factory ReportOutlook.fromJson(Map<String, dynamic> j) {
    final mood = _num(j['market_mood']);
    final cur = (j['currency'] as String?)?.trim();
    final scenarios = _list(j['scenarios'], Scenario.fromJson)..sort((a, b) => a.kind.index.compareTo(b.kind.index));
    final catalysts = _list(j['catalysts'], Catalyst.fromJson)
      ..sort((a, b) {
        final da = a.parsedDate, db = b.parsedDate;
        if (da == null && db == null) return 0;
        if (da == null) return 1;
        if (db == null) return -1;
        return da.compareTo(db);
      });
    return ReportOutlook(
      currentPrice: _num(j['current_price']),
      currency: cur == null || cur.isEmpty ? null : cur,
      scenarios: scenarios,
      keyLevels: _list(j['key_levels'], KeyLevel.fromJson)..sort((a, b) => a.price.compareTo(b.price)),
      catalysts: catalysts,
      marketMood: mood?.round().clamp(-2, 2),
      marketMoodReason: (j['market_mood_reason'] as String? ?? '').trim(),
      mostLikelyReason: (j['most_likely_reason'] as String? ?? '').trim(),
      longTerm: j['long_term'] is Map
          ? LongTermOutlook.fromJson((j['long_term'] as Map).cast<String, dynamic>())
          : null,
    );
  }
}

enum Confidence {
  low,
  medium,
  high;

  static Confidence parse(Object? s) => Confidence.values.asNameMap()[s.toString().trim().toLowerCase()] ?? low;
}

/// Egy hosszú távú időpont: ársáv, a legvalószínűbb ár és a számítás alapja.
class LongTermHorizon {
  const LongTermHorizon({
    required this.years,
    required this.priceLow,
    required this.priceHigh,
    this.priceLikely,
    this.basis = '',
    this.confidence = Confidence.low,
  });

  final int years;
  final double priceLow;
  final double priceHigh;

  /// A sávon belül a legvalószínűbb ár.
  final double? priceLikely;

  /// Egy mondat a számításról (pl. „EPS 11–13 USD × 18–24”).
  final String basis;
  final Confidence confidence;

  /// Évesített hozam a jelenlegi árhoz képest (százalék), osztalék nélkül.
  static double? annualised(double? current, double target, int years) {
    if (current == null || current <= 0 || target <= 0 || years <= 0) return null;
    return (math.pow(target / current, 1 / years) - 1) * 100;
  }

  Map<String, dynamic> toJson() => {
    'years': years,
    'price_low': priceLow,
    'price_high': priceHigh,
    'price_likely': priceLikely,
    'basis': basis,
    'confidence': confidence.name,
  };

  static LongTermHorizon? fromJson(Map<String, dynamic> j) {
    final years = _num(j['years'])?.round();
    var lo = _num(j['price_low']);
    var hi = _num(j['price_high']);
    if (years == null || years <= 0 || lo == null || hi == null || lo <= 0 || hi <= 0) return null;
    if (lo > hi) (lo, hi) = (hi, lo);
    final likely = _num(j['price_likely']);
    return LongTermHorizon(
      years: years,
      priceLow: lo,
      priceHigh: hi,
      // A sávon kívüli „legvalószínűbb” ár ellentmondás; ilyenkor elhagyjuk.
      priceLikely: likely != null && likely >= lo && likely <= hi ? likely : null,
      basis: (j['basis'] as String? ?? '').trim(),
      confidence: Confidence.parse(j['confidence']),
    );
  }
}

/// Hosszú távú kilátás: 3, 5 és 10 éves ársávok egy összegző mondattal.
class LongTermOutlook {
  const LongTermOutlook({this.horizons = const [], this.summary = ''});

  /// Időtáv szerint növekvő sorrendben.
  final List<LongTermHorizon> horizons;
  final String summary;

  Map<String, dynamic> toJson() => {'horizons': horizons.map((h) => h.toJson()).toList(), 'summary': summary};

  static LongTermOutlook? fromJson(Map<String, dynamic> j) {
    final horizons = ReportOutlook._list(j['horizons'], LongTermHorizon.fromJson)
      ..sort((a, b) => a.years.compareTo(b.years));
    if (horizons.isEmpty) return null;
    return LongTermOutlook(horizons: horizons, summary: (j['summary'] as String? ?? '').trim());
  }
}

/// A szekciók rögzített azonosítói: ezek adják a sorrendet és az ikont; a
/// címet a modell írja a felhasználó nyelvén.
enum ReportSectionKind {
  summary,
  news,
  business,
  strengths,
  risks,
  financials,
  valuation,
  ownership,
  outlook,
  longterm,
  watch,
  other;

  static ReportSectionKind parse(String? s) =>
      ReportSectionKind.values.asNameMap()[(s ?? '').trim().toLowerCase()] ?? ReportSectionKind.other;
}

class ReportSection {
  const ReportSection({required this.kind, required this.title, this.paragraphs = const [], this.bullets = const []});

  final ReportSectionKind kind;
  final String title;
  final List<String> paragraphs;
  final List<String> bullets;

  bool get isEmpty => paragraphs.isEmpty && bullets.isEmpty;

  Map<String, dynamic> toJson() => {'kind': kind.name, 'title': title, 'paragraphs': paragraphs, 'bullets': bullets};

  factory ReportSection.fromJson(Map<String, dynamic> j) => ReportSection(
    kind: ReportSectionKind.parse(j['kind'] as String?),
    title: (j['title'] as String? ?? '').trim(),
    paragraphs: _strings(j['paragraphs']),
    bullets: _strings(j['bullets']),
  );

  static List<String> _strings(Object? v) =>
      ((v as List?) ?? const []).map((e) => e.toString().trim()).where((s) => s.isNotEmpty).toList();
}

class ReportSource {
  const ReportSource({required this.title, required this.url});

  final String title;
  final String url;

  Map<String, dynamic> toJson() => {'title': title, 'url': url};

  factory ReportSource.fromJson(Map<String, dynamic> j) =>
      ReportSource(title: (j['title'] as String? ?? '').trim(), url: (j['url'] as String? ?? '').trim());
}
