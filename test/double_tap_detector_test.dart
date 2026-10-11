import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/desktop/double_tap_detector.dart';

void main() {
  late DateTime now;
  late DoubleTapDetector d;

  setUp(() {
    now = DateTime(2026, 10, 11, 12);
    d = DoubleTapDetector(clock: () => now);
  });

  bool at(int ms, String e) {
    now = DateTime(2026, 10, 11, 12).add(Duration(milliseconds: ms));
    return d.add(e);
  }

  test('two quick, clean Option presses trigger once', () {
    expect(at(0, 'down'), isFalse);
    expect(at(80, 'up'), isFalse);
    expect(at(200, 'down'), isFalse);
    expect(at(280, 'up'), isTrue);
    // Egy harmadik nyomás nem indít újra azonnal.
    expect(at(380, 'down'), isFalse);
    expect(at(450, 'up'), isFalse);
  });

  test('too slow between presses does not trigger', () {
    at(0, 'down');
    at(80, 'up');
    at(700, 'down');
    expect(at(760, 'up'), isFalse);
  });

  test('a long hold is not a tap', () {
    at(0, 'down');
    at(600, 'up');
    at(700, 'down');
    expect(at(760, 'up'), isFalse);
  });

  test('Option used as a modifier (Option+key or with Cmd) does not trigger', () {
    at(0, 'down');
    at(30, 'other');
    at(80, 'up');
    at(200, 'down');
    expect(at(260, 'up'), isFalse);

    at(1000, 'downWithOthers');
    at(1050, 'up');
    at(1150, 'down');
    expect(at(1200, 'up'), isFalse);
  });

  test('typing right after the first tap cancels it', () {
    at(0, 'down');
    at(60, 'up');
    at(120, 'other');
    at(200, 'down');
    expect(at(260, 'up'), isFalse);
  });
}
