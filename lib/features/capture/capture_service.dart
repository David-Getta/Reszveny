import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';

/// Egy elkészített vagy kiválasztott kép.
class CapturedImage {
  const CapturedImage({required this.bytes, required this.mimeType, this.fileName});

  final Uint8List bytes;

  /// `image/jpeg`, `image/png`, `image/webp` vagy `image/gif`.
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

  Future<CapturedImage?> _pick(ImageSource source) async {
    final file = await _picker.pickImage(
      source: source,
      maxWidth: maxDimension.toDouble(),
      maxHeight: maxDimension.toDouble(),
      imageQuality: jpegQuality,
      requestFullMetadata: false,
    );
    if (file == null) return null;
    final bytes = await file.readAsBytes();
    return CapturedImage(bytes: bytes, mimeType: mimeTypeFor(file.name, file.mimeType), fileName: file.name);
  }

  /// A platform által adott MIME-típus, vagy a kiterjesztésből találjuk ki.
  static String mimeTypeFor(String fileName, String? reported) {
    if (reported != null && reported.startsWith('image/')) return reported;
    final lower = fileName.toLowerCase();
    if (lower.endsWith('.png')) return 'image/png';
    if (lower.endsWith('.webp')) return 'image/webp';
    if (lower.endsWith('.gif')) return 'image/gif';
    return 'image/jpeg';
  }
}
