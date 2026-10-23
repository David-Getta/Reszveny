import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/features/capture/capture_service.dart';

/// Egyszínű PNG a megadott méretben.
Future<Uint8List> _png(int width, int height) async {
  final recorder = ui.PictureRecorder();
  ui.Canvas(recorder).drawRect(
    ui.Rect.fromLTWH(0, 0, width.toDouble(), height.toDouble()),
    ui.Paint()..color = const ui.Color(0xFF3366CC),
  );
  final image = await recorder.endRecording().toImage(width, height);
  final data = await image.toByteData(format: ui.ImageByteFormat.png);
  image.dispose();
  return data!.buffer.asUint8List();
}

/// 2×2-es, 24 bites BMP (mint a Windows vágólapé, csak kicsiben).
Uint8List _bmp() {
  final b = ByteData(70);
  b
    ..setUint8(0, 0x42)
    ..setUint8(1, 0x4D)
    ..setUint32(2, 70, Endian.little)
    ..setUint32(10, 54, Endian.little)
    ..setUint32(14, 40, Endian.little)
    ..setInt32(18, 2, Endian.little)
    ..setInt32(22, 2, Endian.little)
    ..setUint16(26, 1, Endian.little)
    ..setUint16(28, 24, Endian.little)
    ..setUint32(34, 16, Endian.little);
  for (var i = 54; i < 70; i++) {
    b.setUint8(i, 0x80);
  }
  return b.buffer.asUint8List();
}

Future<(int, int)> _size(Uint8List bytes) async {
  final codec = await ui.instantiateImageCodec(bytes);
  final image = (await codec.getNextFrame()).image;
  final size = (image.width, image.height);
  image.dispose();
  codec.dispose();
  return size;
}

void main() {
  test('the type comes from the bytes, not the file name', () async {
    expect(CaptureService.sniff(await _png(4, 4)), 'image/png');
    expect(CaptureService.sniff(Uint8List.fromList([0xFF, 0xD8, 0xFF, 0xE0])), 'image/jpeg');
    expect(CaptureService.sniff(_bmp()), isNull);
    final small = await _png(40, 30);
    final same = await CaptureService.prepare(small, fileName: 'IMG_0001.HEIC');
    expect(same.mimeType, 'image/png');
    expect(identical(same.bytes, small), isTrue, reason: 'a small supported image is sent as it is');
  });

  test('a Windows clipboard BMP becomes PNG; a large image is scaled down', () async {
    final fromBmp = await CaptureService.prepare(_bmp());
    expect(fromBmp.mimeType, 'image/png');
    expect(CaptureService.sniff(fromBmp.bytes), 'image/png');
    expect(await _size(fromBmp.bytes), (2, 2));

    final large = await CaptureService.prepare(await _png(3200, 400));
    expect(await _size(large.bytes), (CaptureService.maxDimension, 200));
  });

  test('an unreadable or empty file is an error, not an upload', () async {
    for (final bytes in [
      Uint8List(0),
      Uint8List.fromList([1, 2, 3, 4, 5]),
    ]) {
      await expectLater(
        CaptureService.prepare(bytes),
        throwsA(isA<AppException>().having((e) => e.code, 'code', AppErrorCode.imageUnsupported)),
      );
    }
  });
}
