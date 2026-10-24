import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/util/source_kind.dart';

void main() {
  test('sources are labelled by their website', () {
    expect(sourceKindOf('https://www.sec.gov/Archives/x'), SourceKind.official);
    expect(sourceKindOf('https://bet.hu/oldalak/kozlemenyek'), SourceKind.official);
    expect(sourceKindOf('https://www.prnewswire.com/news-releases/x'), SourceKind.pressRelease);
    expect(sourceKindOf('https://www.reuters.com/technology/x'), SourceKind.majorNews);
    expect(sourceKindOf('https://markets.ft.com/data'), SourceKind.majorNews);
    expect(sourceKindOf('https://www.portfolio.hu/befektetes/x'), SourceKind.majorNews);
    expect(sourceKindOf('https://www.fool.com/investing/x'), SourceKind.opinion);
    expect(sourceKindOf('https://seekingalpha.com/article/x'), SourceKind.opinion);
    // Az `ir.`/`investors.` gépnév és a `/investors`, `/newsroom` útvonal bárkinek
    // kiosztható: nem ad „hivatalos” vagy „sajtóközlemény” címkét.
    expect(sourceKindOf('https://ir.pump-and-dump.biz/aapl'), isNull);
    expect(sourceKindOf('https://investors.totally-legit.xyz/'), isNull);
    expect(sourceKindOf('https://random-blog.example/investors/apple-bankrupt'), isNull);
    expect(sourceKindOf('https://evil.example/newsroom/x'), isNull);
    // Ismert hírportálon az útvonal nem számít.
    expect(sourceKindOf('https://www.reuters.com/newsroom/x'), SourceKind.majorNews);
    // Ismeretlen vagy hibás cím: nincs címke (a hasonló nevű domain sem téveszti meg).
    expect(sourceKindOf('https://example.com/a'), isNull);
    expect(sourceKindOf('https://notreuters.com/a'), isNull);
    expect(sourceKindOf('nonsense'), isNull);
  });
}
