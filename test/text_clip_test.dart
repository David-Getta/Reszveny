import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/util/text.dart';

void main() {
  test('clipping never leaves half an emoji (a lone surrogate the API would reject)', () {
    final s = '${'a' * 298}😀 tail';
    final c = clipText(s, 299);
    expect(c, 'a' * 298);
    expect(jsonEncode(c), isNot(contains(r'\ud83d')));
    expect(clipText('${'a' * 297}😀', 299), '${'a' * 297}😀');
    expect(clipText('short', 10), 'short');
  });
}
