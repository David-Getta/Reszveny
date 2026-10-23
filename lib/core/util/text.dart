import 'dart:convert';

/// Az első legfeljebb [max] UTF-16 kódegység úgy, hogy egy emoji (helyettesítő pár)
/// ne vágódjon ketté: a magányosan maradó első fele elmarad (az API-k és a JSON-
/// feldolgozók a magányos felet hibásnak tartják).
String clipText(String s, int max) {
  if (s.length <= max) return s;
  var end = max;
  if (end > 0 && (s.codeUnitAt(end - 1) & 0xFC00) == 0xD800) end--;
  return s.substring(0, end);
}

/// A JSON-érték, ha szöveg; különben `null` (egy hibás fájl vagy csomag ne dobjon kivételt).
String? asText(Object? v) => v is String ? v : null;

/// Futásonként és platformonként is ugyanaz a rövid ujjlenyomat (FNV-1a, 32 bit; a
/// `String.hashCode` nem garantáltan állandó). A szorzás webbiztosan, 2^53 alatt
/// marad: a prím `2^24 + 0x193`.
String stableHash(String s) {
  var h = 0x811c9dc5;
  for (final b in utf8.encode(s)) {
    h ^= b;
    h = (((h << 24) & 0xffffffff) + h * 0x193) & 0xffffffff;
  }
  return h.toRadixString(16);
}
