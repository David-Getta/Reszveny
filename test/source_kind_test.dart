import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/util/source_kind.dart';

void main() {
  test('sources are labelled by their website', () {
    expect(sourceKindOf('https://www.sec.gov/Archives/x'), SourceKind.official);
    expect(sourceKindOf('https://bet.hu/oldalak/kozlemenyek'), SourceKind.official);
    expect(sourceKindOf('https://investor.nvidia.com/news'), SourceKind.official);
    expect(sourceKindOf('https://ir.otpbank.hu/'), SourceKind.official);
    expect(sourceKindOf('https://www.prnewswire.com/news-releases/x'), SourceKind.pressRelease);
    expect(sourceKindOf('https://www.reuters.com/technology/x'), SourceKind.majorNews);
    expect(sourceKindOf('https://markets.ft.com/data'), SourceKind.majorNews);
    expect(sourceKindOf('https://www.portfolio.hu/befektetes/x'), SourceKind.majorNews);
    expect(sourceKindOf('https://www.fool.com/investing/x'), SourceKind.opinion);
    expect(sourceKindOf('https://seekingalpha.com/article/x'), SourceKind.opinion);
    // A cég saját oldalai az útvonalról: befektetői oldal és sajtószoba.
    expect(sourceKindOf('https://www.apple.com/newsroom/2026/07/q3/'), SourceKind.pressRelease);
    expect(sourceKindOf('https://www.mol.hu/investor-relations/reports'), SourceKind.official);
    // Ismert hírportálon az útvonal nem számít.
    expect(sourceKindOf('https://www.reuters.com/newsroom/x'), SourceKind.majorNews);
    // Ismeretlen vagy hibás cím: nincs címke (a hasonló nevű domain sem téveszti meg).
    expect(sourceKindOf('https://example.com/a'), isNull);
    expect(sourceKindOf('https://notreuters.com/a'), isNull);
    expect(sourceKindOf('nonsense'), isNull);
  });
}
