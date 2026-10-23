import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/widgets/fit_row.dart';

void main() {
  Future<void> pump(WidgetTester tester, double width, {TextDirection dir = TextDirection.ltr}) async {
    await tester.pumpWidget(
      Directionality(
        textDirection: dir,
        child: Align(
          alignment: Alignment.topLeft,
          child: SizedBox(
            width: width,
            child: FitRow(
              lead: const SizedBox(key: ValueKey('lead'), width: 120, height: 20),
              trailing: const SizedBox(key: ValueKey('trail'), width: 90, height: 20),
            ),
          ),
        ),
      ),
    );
  }

  Rect rect(WidgetTester tester, String key) => tester.getRect(find.byKey(ValueKey(key)));

  testWidgets('room enough: one line, the lead fills the rest, the trailing part at the end', (tester) async {
    await pump(tester, 300);
    expect(rect(tester, 'trail'), const Rect.fromLTWH(210, 0, 90, 20));
    expect(rect(tester, 'lead').width, 300 - 90 - 8);
    expect(tester.getSize(find.byType(FitRow)), const Size(300, 20));
  });

  testWidgets('too narrow: the trailing part goes below the lead, at the end', (tester) async {
    await pump(tester, 160);
    expect(rect(tester, 'lead'), const Rect.fromLTWH(0, 0, 120, 20));
    expect(rect(tester, 'trail'), const Rect.fromLTWH(70, 22, 90, 20));
    expect(tester.getSize(find.byType(FitRow)), const Size(160, 42));
  });

  testWidgets('narrow but the lead fits beside it on one line: stays in one row', (tester) async {
    // 220 − 90 − 8 = 122 ≥ 120 (a címke egy sorban elfér), bár kevesebb, mint a fele.
    await pump(tester, 220);
    expect(rect(tester, 'trail').top, 0);
  });

  testWidgets('right-to-left: the lead on the right, the trailing part on the left', (tester) async {
    await pump(tester, 300, dir: TextDirection.rtl);
    expect(rect(tester, 'trail').left, 0);
    expect(rect(tester, 'lead').right, 300);
    await pump(tester, 160, dir: TextDirection.rtl);
    expect(rect(tester, 'lead').right, 160);
    expect(rect(tester, 'trail'), const Rect.fromLTWH(0, 22, 90, 20));
  });

  testWidgets('works inside an intrinsic-width parent (dialogs) with an Expanded in the lead', (tester) async {
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: Center(
          child: IntrinsicWidth(
            child: FitRow(
              lead: const Row(children: [Expanded(child: Text('Label'))]),
              trailing: const Text('42'),
            ),
          ),
        ),
      ),
    );
    expect(tester.takeException(), isNull);
  });
}
