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
  });

  final String symbol;

  /// Egy-két mondatos lényeg (TL;DR).
  final String headline;
  final List<ReportSection> sections;
  final List<ReportSource> sources;
  final DateTime generatedAt;

  /// A nyelv angol neve, amin az elemzés készült (pl. `Hungarian`).
  final String? language;

  Map<String, dynamic> toJson() => {
    'symbol': symbol,
    'headline': headline,
    'sections': sections.map((s) => s.toJson()).toList(),
    'sources': sources.map((s) => s.toJson()).toList(),
    'generated_at': generatedAt.toUtc().toIso8601String(),
    'language': language,
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
  );
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
