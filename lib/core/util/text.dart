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
