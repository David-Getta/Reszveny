import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:image_picker/image_picker.dart';
import 'package:pasteboard/pasteboard.dart';

import '../../core/errors.dart';

/// Egy elkészített vagy kiválasztott kép.
class CapturedImage {
  const CapturedImage({required this.bytes, required this.mimeType, this.fileName});

  final Uint8List bytes;

  /// `image/jpeg`, `image/png`, `image/webp` vagy `image/gif` (a bájtokból megállapítva).
  final String mimeType;
  final String? fileName;
}

/// Kamera és galéria egységes kezelése minden platformon.
///
/// Mobilon kamera és galéria is elérhető; macOS-en és Windowson a rendszer
/// fájlválasztója nyílik meg (kamera nincs), ezért [supportsCamera] alapján
/// a felület elrejti a kamera gombot.
class CaptureService {
  CaptureService({ImagePicker? picker}) : _picker = picker ?? ImagePicker();

  final ImagePicker _picker;

  /// A felismeréshez nem kell teljes felbontás: a hosszabb oldal legfeljebb
  /// ennyi pixel, így a feltöltés gyors és olcsó marad.
  static const int maxDimension = 1600;
  static const int jpegQuality = 85;

  bool get supportsCamera => _picker.supportsImageSource(ImageSource.camera);

  Future<CapturedImage?> fromCamera() => _pick(ImageSource.camera);

  Future<CapturedImage?> fromGallery() => _pick(ImageSource.gallery);

  /// Kép a vágólapról (pl. képernyőfotó ⌘⇧4 után). Hiba, ha nincs kép.
  Future<CapturedImage> fromClipboard() async {
    final bytes = await Pasteboard.image;
    if (bytes == null || bytes.isEmpty) throw const AppException(AppErrorCode.clipboardNoImage);
    return prepare(bytes);
  }

  /// A feltöltés felső határa (a base64 egyharmaddal nagyobb: az API képenként 5 MB-ot fogad).
  static const int maxBytes = 3600 * 1024;

  /// A bájtok típusa a fájl elejéből; `null`, ha nem az API által ismert formátum.
  static String? sniff(Uint8List b) {
    if (b.length > 8 && b[0] == 0x89 && b[1] == 0x50 && b[2] == 0x4E && b[3] == 0x47) return 'image/png';
    if (b.length > 3 && b[0] == 0xFF && b[1] == 0xD8) return 'image/jpeg';
    if (b.length > 12 && b[8] == 0x57 && b[9] == 0x45 && b[10] == 0x42 && b[11] == 0x50) return 'image/webp';
    if (b.length > 3 && b[0] == 0x47 && b[1] == 0x49 && b[2] == 0x46) return 'image/gif';
    return null;
  }

  /// Hordoz-e a kép metaadatot (hely, idő, készülék, szerző): JPEG-ben APP1–APP15 (EXIF, XMP)
  /// vagy megjegyzés-szegmens, PNG-ben eXIf / szöveges darab, WebP-ben EXIF / XMP darab.
  static bool hasMetadata(Uint8List b) {
    switch (sniff(b)) {
      case 'image/jpeg':
        var i = 2;
        while (i + 4 <= b.length && b[i] == 0xFF) {
          final marker = b[i + 1];
          // A képadat kezdete (SOS) vagy vége (EOI): a fejlécek elfogytak.
          if (marker == 0xDA || marker == 0xD9) return false;
          if ((marker >= 0xE1 && marker <= 0xEF) || marker == 0xFE) return true;
          i += 2 + ((b[i + 2] << 8) | b[i + 3]);
        }
        return false;
      case 'image/png':
        var i = 8;
        while (i + 8 <= b.length) {
          final len = (b[i] << 24) | (b[i + 1] << 16) | (b[i + 2] << 8) | b[i + 3];
          final kind = String.fromCharCodes(b.sublist(i + 4, i + 8));
          if (const {'eXIf', 'tEXt', 'iTXt', 'zTXt'}.contains(kind)) return true;
          if (kind == 'IDAT' || kind == 'IEND' || len < 0) return false;
          i += 12 + len;
        }
        return false;
      case 'image/webp':
        var i = 12;
        while (i + 8 <= b.length) {
          final kind = String.fromCharCodes(b.sublist(i, i + 4));
          final len = b[i + 4] | (b[i + 5] << 8) | (b[i + 6] << 16) | (b[i + 7] << 24);
          if (kind == 'EXIF' || kind == 'XMP ') return true;
          i += 8 + len + (len.isOdd ? 1 : 0);
        }
        return false;
      default:
        return false;
    }
  }

  /// A kép a felismeréshez. A típus a bájtokból jön (a fájlnév és a platform által
  /// jelentett típus megtévesztő: a HEIC „.jpg”-nek, az átméretezett PNG JPEG-nek
  /// látszhat). Ami nem JPEG/PNG/WebP/GIF (pl. a Windows vágólap BMP-je, HEIC,
  /// TIFF), nagyobb [maxDimension]-nél vagy [maxBytes]-nál, kicsinyítve PNG lesz
  /// (asztali gépen a választó és a vágólap nem kicsinyít). Olvashatatlan képnél hiba.
  static Future<CapturedImage> prepare(Uint8List bytes, {String? fileName}) async {
    if (bytes.isEmpty) throw const AppException(AppErrorCode.imageUnsupported);
    final type = sniff(bytes);
    var scale = 1.0;
    for (var attempt = 0; attempt < 4; attempt++, scale *= 0.7) {
      var fits = false;
      final ui.Image image;
      try {
        final codec = await ui.instantiateImageCodecWithSize(
          await ui.ImmutableBuffer.fromUint8List(bytes),
          getTargetSize: (w, h) {
            final longest = max(w, h);
            fits = longest <= maxDimension;
            final s = min(1.0, maxDimension / longest) * scale;
            return ui.TargetImageSize(width: max(1, (w * s).round()), height: max(1, (h * s).round()));
          },
        );
        image = (await codec.getNextFrame()).image;
        codec.dispose();
      } catch (e) {
        throw AppException(AppErrorCode.imageUnsupported, cause: e);
      }
      // Az eredeti bájtok csak metaadat nélkül mennek tovább: egy galériából választott fotó
      // EXIF-je a készítés helyét (GPS), idejét és a készüléket is hordozza. Újrakódolva
      // (a dekódoló az elforgatást alkalmazza) ezek elvesznek.
      if (attempt == 0 && fits && type != null && bytes.length <= maxBytes && !hasMetadata(bytes)) {
        image.dispose();
        return CapturedImage(bytes: bytes, mimeType: type, fileName: fileName);
      }
      final png = await image.toByteData(format: ui.ImageByteFormat.png);
      image.dispose();
      if (png == null) break;
      if (png.lengthInBytes <= maxBytes) {
        return CapturedImage(bytes: png.buffer.asUint8List(), mimeType: 'image/png', fileName: fileName);
      }
    }
    throw const AppException(AppErrorCode.imageUnsupported);
  }

  Future<CapturedImage?> _pick(ImageSource source) async {
    final file = await _picker.pickImage(
      source: source,
      maxWidth: maxDimension.toDouble(),
      maxHeight: maxDimension.toDouble(),
      imageQuality: jpegQuality,
      requestFullMetadata: false,
    );
    if (file == null) return null;
    return prepare(await file.readAsBytes(), fileName: file.name);
  }
}
