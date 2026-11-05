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

  /// A JPEG személyes metaadatot hordozó szegmensei: APP1 (EXIF: hely, idő, készülék; XMP),
  /// APP13 (IPTC: szerző, hely) és a megjegyzés. A színprofil (APP2) és az Adobe-szegmens
  /// (APP14) a megjelenítéshez kell, az marad.
  static bool _personalJpegSegment(int marker) => marker == 0xE1 || marker == 0xED || marker == 0xFE;

  static const _pngTextChunks = {'eXIf', 'tEXt', 'iTXt', 'zTXt'};

  /// Hordoz-e a kép személyes metaadatot (hely, idő, készülék, szerző): JPEG-ben EXIF / XMP /
  /// IPTC / megjegyzés, PNG-ben eXIf / szöveges darab, WebP-ben EXIF / XMP darab.
  static bool hasMetadata(Uint8List b) {
    switch (sniff(b)) {
      case 'image/jpeg':
        var i = 2;
        while (i + 4 <= b.length && b[i] == 0xFF) {
          final marker = b[i + 1];
          // A képadat kezdete (SOS) vagy vége (EOI): a fejlécek elfogytak.
          if (marker == 0xDA || marker == 0xD9) return false;
          if (_personalJpegSegment(marker)) return true;
          i += 2 + ((b[i + 2] << 8) | b[i + 3]);
        }
        return false;
      case 'image/png':
        var i = 8;
        while (i + 8 <= b.length) {
          final len = (b[i] << 24) | (b[i + 1] << 16) | (b[i + 2] << 8) | b[i + 3];
          final kind = String.fromCharCodes(b.sublist(i + 4, i + 8));
          if (_pngTextChunks.contains(kind)) return true;
          if (kind == 'IDAT' || kind == 'IEND') return false;
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

  /// A kép a személyes metaadatai nélkül, újratömörítés nélkül (a JPEG/PNG kép-adata bájtra
  /// ugyanaz – nem lesz belőle többszörös méretű PNG, és nem kell kicsinyíteni). Null, ha a
  /// formátum (WebP), egy sérült fejléc, vagy egy elforgatott JPEG (EXIF Orientation ≠ 1) miatt
  /// nem vágható ki: akkor újrakódolva megy – a dekódoló az elforgatást alkalmazza, így a
  /// fogadó oldalnak nem kell az EXIF-címkét ismernie.
  static Uint8List? stripMetadata(Uint8List b) {
    try {
      switch (sniff(b)) {
        case 'image/jpeg':
          return _stripJpeg(b);
        case 'image/png':
          final out = BytesBuilder(copy: false)..add(b.sublist(0, 8));
          var i = 8;
          while (i + 12 <= b.length) {
            final len = (b[i] << 24) | (b[i + 1] << 16) | (b[i + 2] << 8) | b[i + 3];
            final kind = String.fromCharCodes(b.sublist(i + 4, i + 8));
            if (i + 12 + len > b.length) return null;
            if (!_pngTextChunks.contains(kind)) out.add(b.sublist(i, i + 12 + len));
            i += 12 + len;
            if (kind == 'IEND') return out.toBytes();
          }
          return null;
        default:
          return null;
      }
    } catch (_) {
      return null;
    }
  }

  static Uint8List? _stripJpeg(Uint8List b) {
    final out = BytesBuilder(copy: false)..add(b.sublist(0, 2));
    var i = 2;
    while (true) {
      if (i + 4 > b.length || b[i] != 0xFF) return null;
      final marker = b[i + 1];
      if (marker == 0xDA) break;
      final end = i + 2 + ((b[i + 2] << 8) | b[i + 3]);
      if (end > b.length) return null;
      final segment = b.sublist(i, end);
      if (!_personalJpegSegment(marker)) {
        out.add(segment);
      } else if (marker == 0xE1 && (exifOrientation(segment) ?? 1) != 1) {
        return null;
      }
      i = end;
    }
    out.add(b.sublist(i));
    return out.toBytes();
  }

  /// Az EXIF szegmens (APP1, a jelölővel együtt) tájolása (1–8), ha van.
  static int? exifOrientation(Uint8List segment) {
    const header = 10; // FF E1, hossz (2), „Exif\0\0” (6)
    if (segment.length < header + 8 || String.fromCharCodes(segment.sublist(4, 8)) != 'Exif') return null;
    final t = segment.sublist(header);
    final little = t[0] == 0x49;
    int u16(int o) => little ? t[o] | (t[o + 1] << 8) : (t[o] << 8) | t[o + 1];
    int u32(int o) => little
        ? t[o] | (t[o + 1] << 8) | (t[o + 2] << 16) | (t[o + 3] << 24)
        : (t[o] << 24) | (t[o + 1] << 16) | (t[o + 2] << 8) | t[o + 3];
    final ifd = u32(4);
    if (ifd + 2 > t.length) return null;
    final count = u16(ifd);
    for (var k = 0; k < count; k++) {
      final e = ifd + 2 + k * 12;
      if (e + 12 > t.length) return null;
      if (u16(e) == 0x0112) {
        final v = u16(e + 8);
        return v >= 1 && v <= 8 ? v : null;
      }
    }
    return null;
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
      // Az eredeti bájtok csak személyes metaadat nélkül mennek tovább: egy galériából választott
      // fotó EXIF-je a készítés helyét (GPS), idejét és a készüléket is hordozza. Ezek a
      // szegmensek kivágva (a tömörített kép marad); ha ez nem megy, újrakódolva.
      if (attempt == 0 && fits && type != null) {
        final clean = hasMetadata(bytes) ? stripMetadata(bytes) : bytes;
        if (clean != null && clean.length <= maxBytes) {
          image.dispose();
          return CapturedImage(bytes: clean, mimeType: type, fileName: fileName);
        }
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
