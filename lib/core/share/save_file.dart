import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:share_plus/share_plus.dart';

import 'share_text.dart' show originOrCenter;

/// Fájl mentése: asztali gépen mentés-ablakkal, máshol (telefon, web) a
/// megosztás-menüvel, ahonnan menthető vagy megnyitható (pl. a naptárban).
Future<void> saveFile(Uint8List bytes, String fileName, {required String mimeType, required XTypeGroup type}) async {
  final file = XFile.fromData(bytes, mimeType: mimeType, name: fileName);
  final desktop =
      !kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.macOS ||
          defaultTargetPlatform == TargetPlatform.windows ||
          defaultTargetPlatform == TargetPlatform.linux);
  if (desktop) {
    final to = await getSaveLocation(suggestedName: fileName, acceptedTypeGroups: [type]);
    if (to != null) await file.saveTo(to.path);
    return;
  }
  await SharePlus.instance.share(
    ShareParams(
      files: [file],
      fileNameOverrides: [fileName],
      downloadFallbackEnabled: true,
      sharePositionOrigin: originOrCenter(null),
    ),
  );
}
