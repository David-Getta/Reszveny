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

  test('a photo carrying metadata (location, device) is re-encoded without it; a clean one passes as is', () async {
    // JPEG fejlécek: APP0 (JFIF) után APP1 Exif → metaadat; csak APP0 → nincs.
    final exifJpeg = Uint8List.fromList([
      0xFF, 0xD8, //
      0xFF, 0xE0, 0x00, 0x04, 0x00, 0x00,
      0xFF, 0xE1, 0x00, 0x08, 0x45, 0x78, 0x69, 0x66, 0x00, 0x00,
      0xFF, 0xDA, 0x00, 0x02,
    ]);
    final cleanJpeg = Uint8List.fromList([0xFF, 0xD8, 0xFF, 0xE0, 0x00, 0x04, 0x00, 0x00, 0xFF, 0xDA, 0x00, 0x02]);
    expect(CaptureService.hasMetadata(exifJpeg), isTrue);
    expect(CaptureService.hasMetadata(cleanJpeg), isFalse);
    // WebP EXIF darabbal.
    final webp = Uint8List.fromList([
      ...'RIFF'.codeUnits, 0x14, 0, 0, 0, ...'WEBP'.codeUnits, //
      ...'EXIF'.codeUnits, 0x02, 0, 0, 0, 0x00, 0x00,
    ]);
    expect(CaptureService.hasMetadata(webp), isTrue);
    // PNG szöveges darabbal (pl. szerző, hely): a teljes úton újrakódolva, nélküle.
    final png = await _png(40, 30);
    expect(CaptureService.hasMetadata(png), isFalse);
    final text = 'Location\u0000Budapest'.codeUnits;
    final chunk = BytesBuilder()
      ..add([0, 0, 0, text.length])
      ..add('tEXt'.codeUnits)
      ..add(text)
      ..add([0, 0, 0, 0]);
    // A tEXt darab az IHDR után (8 bájt aláírás + 25 bájt IHDR).
    final tagged = Uint8List.fromList([...png.sublist(0, 33), ...chunk.toBytes(), ...png.sublist(33)]);
    expect(CaptureService.hasMetadata(tagged), isTrue);
    final out = await CaptureService.prepare(tagged);
    expect(CaptureService.hasMetadata(out.bytes), isFalse);
    expect(String.fromCharCodes(out.bytes).contains('Budapest'), isFalse);
    // A tiszta PNG változatlanul megy.
    expect((await CaptureService.prepare(png)).bytes, png);
  });

  test('metadata is cut out without re-compressing: location and comments go, the colour profile stays', () {
    Uint8List seg(int marker, List<int> data) =>
        Uint8List.fromList([0xFF, marker, (data.length + 2) >> 8, (data.length + 2) & 0xFF, ...data]);
    // EXIF (little-endian TIFF): tájolás és egy „GPS” szöveg.
    Uint8List jpeg(int orientation) {
      final tiff = [
        0x49, 0x49, 0x2A, 0x00, 0x08, 0x00, 0x00, 0x00, //
        0x01, 0x00, // 1 bejegyzés
        0x12, 0x01, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, orientation, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00,
        ...'GPS 47.49N 19.04E'.codeUnits,
      ];
      return Uint8List.fromList([
        0xFF, 0xD8, //
        ...seg(0xE0, 'JFIF\u0000'.codeUnits),
        ...seg(0xE1, [...'Exif'.codeUnits, 0, 0, ...tiff]),
        ...seg(0xE2, 'ICC_PROFILE'.codeUnits),
        ...seg(0xFE, 'shot at home'.codeUnits),
        0xFF, 0xDA, 0x00, 0x02, 0x11, 0x22, 0x33, 0xFF, 0xD9,
      ]);
    }

    final upright = jpeg(1);
    expect(CaptureService.hasMetadata(upright), isTrue);
    final clean = CaptureService.stripMetadata(upright)!;
    final text = String.fromCharCodes(clean);
    expect(text, isNot(contains('GPS')));
    expect(text, isNot(contains('shot at home')));
    expect(text, contains('ICC_PROFILE'));
    expect(CaptureService.hasMetadata(clean), isFalse);
    // A kép-adat bájtra ugyanaz.
    expect(clean.sublist(clean.length - 7), upright.sublist(upright.length - 7));
    // Elforgatott fotó: újrakódolva megy (a dekódoló forgat), nem egy EXIF-címkére bízva.
    final rotated = jpeg(6);
    final exif = rotated.indexOf(0xE1, 2) - 1;
    expect(CaptureService.exifOrientation(rotated.sublist(exif, exif + 4 + 6 + 26)), 6);
    expect(CaptureService.stripMetadata(rotated), isNull);
  });
}
