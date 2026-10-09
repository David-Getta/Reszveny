import '../../core/models/stock_candidate.dart';

/// Nyers szövegből (OCR-eredmény, képernyőfotó átirata) keres ticker-
/// és cégnév-jelölteket heurisztikával. Hálózat nélkül működik, ezért az
/// on-device felismerés alapja, és az AI-eredmény ellenőrzésére is jó.
class TickerExtractor {
  const TickerExtractor({this.knownCompanies = defaultKnownCompanies});

  /// Cégnév-részlet (kisbetűs) → ticker. Bővíthető, később adatbázisból jön.
  final Map<String, String> knownCompanies;

  static const Map<String, String> defaultKnownCompanies = {
    'apple': 'AAPL',
    'microsoft': 'MSFT',
    'alphabet': 'GOOGL',
    'google': 'GOOGL',
    'amazon': 'AMZN',
    'nvidia': 'NVDA',
    'meta platforms': 'META',
    'facebook': 'META',
    'tesla': 'TSLA',
    'berkshire': 'BRK.B',
    'coca-cola': 'KO',
    'coca cola': 'KO',
    'otp bank': 'OTP',
    'otp': 'OTP',
    'mol nyrt': 'MOL',
    'mol magyar olaj': 'MOL',
    'richter gedeon': 'RICHTER',
    'magyar telekom': 'MTELEKOM',
    '4ig': '4IG',
    'opus global': 'OPUS',
  };

  /// Gyakori nagybetűs szavak, amik nem tickerek.
  static const Set<String> _stopWords = {
    'USD',
    'EUR',
    'HUF',
    'GBP',
    'CHF',
    'JPY',
    'NYSE',
    'NASDAQ',
    'BSE',
    'BÉT',
    'LSE',
    'ETF',
    'IPO',
    'CEO',
    'CFO',
    'THE',
    'AND',
    'FOR',
    'INC',
    'LTD',
    'PLC',
    'NYRT',
    'ZRT',
    'KFT',
    'CORP',
    'CO',
    'BUY',
    'SELL',
    'HOLD',
    'OPEN',
    'HIGH',
    'LOW',
    'CLOSE',
    'VOL',
    'PE',
    'EPS',
    'AM',
    'PM',
    'YTD',
    'MAX',
    'MIN',
    'AVG',
    'TTM',
    'ISIN',
    'WKN',
    'ID',
    'OK',
  };

  static final RegExp _tickerLike = RegExp(r'(?<![A-Za-z0-9])\$?([A-Z]{1,5}(?:\.[A-Z]{1,2})?)(?![A-Za-z0-9])');
  static final RegExp _exchangePrefixed = RegExp(
    r'\b(NASDAQ|NYSE|BSE|BÉT|LSE|XETRA|AMEX)\s*[:\-]\s*([A-Z]{1,6}(?:\.[A-Z]{1,2})?)\b',
  );

  List<StockCandidate> extract(String text) {
    if (text.trim().isEmpty) return const [];
    final found = <String, StockCandidate>{};

    void add(StockCandidate c) {
      final existing = found[c.symbol];
      if (existing == null || existing.confidence < c.confidence) {
        found[c.symbol] = c;
      }
    }

    // 1. "NASDAQ: AAPL" alak – a legbiztosabb.
    for (final m in _exchangePrefixed.allMatches(text)) {
      add(
        StockCandidate(
          symbol: m.group(2)!,
          companyName: m.group(2)!,
          exchange: m.group(1),
          confidence: 0.9,
          evidence: 'Tőzsde–ticker pár a szövegben: "${m.group(0)}"',
        ),
      );
    }

    // 2. Ismert cégnevek.
    final lower = text.toLowerCase();
    for (final entry in knownCompanies.entries) {
      if (RegExp('(?<![a-z0-9])${RegExp.escape(entry.key)}(?![a-z0-9])').hasMatch(lower)) {
        add(
          StockCandidate(
            symbol: entry.value,
            companyName: _titleCase(entry.key),
            confidence: 0.75,
            evidence: 'Ismert cégnév a szövegben: "${entry.key}"',
          ),
        );
      }
    }

    // 3. Ticker-szerű nagybetűs szavak ("$AAPL" erősebb, mint "AAPL").
    for (final m in _tickerLike.allMatches(text)) {
      final symbol = m.group(1)!;
      if (_stopWords.contains(symbol) || symbol.length < 2) continue;
      final hasDollar = m.group(0)!.startsWith(r'$');
      add(
        StockCandidate(
          symbol: symbol,
          companyName: symbol,
          confidence: hasDollar ? 0.7 : 0.4,
          evidence: hasDollar ? 'Dollárjeles ticker: "\$$symbol"' : 'Ticker-szerű szó: "$symbol"',
        ),
      );
    }

    final list = found.values.toList()..sort((a, b) => b.confidence.compareTo(a.confidence));
    return list;
  }

  static String _titleCase(String s) =>
      s.split(' ').map((w) => w.isEmpty ? w : '${w[0].toUpperCase()}${w.substring(1)}').join(' ');
}
