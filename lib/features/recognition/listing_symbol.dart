/// A tőzsde neve vagy rövidítése (betűk és számok, nagybetűvel) → a piaci adatok
/// tickerutótagja (mint a Yahoo Finance-é: `OTP.BD`, `SIE.DE`, `7203.T`). Az
/// amerikai tőzsdék nincsenek benne: ott utótag nélküli a ticker.
const _suffixes = <String, String>{
  'BSE': '.BD',
  'BUX': '.BD',
  'BET': '.BD',
  'BUDAPEST': '.BD',
  'BUDAPESTSTOCKEXCHANGE': '.BD',
  'XETRA': '.DE',
  'XETR': '.DE',
  'ETR': '.DE',
  'FRA': '.DE',
  'FWB': '.DE',
  'FRANKFURT': '.DE',
  'FRANKFURTSTOCKEXCHANGE': '.DE',
  'DEUTSCHEBORSE': '.DE',
  'DEUTSCHEBOERSE': '.DE',
  'LSE': '.L',
  'LON': '.L',
  'LONDON': '.L',
  'LONDONSTOCKEXCHANGE': '.L',
  'TSE': '.T',
  'TYO': '.T',
  'JPX': '.T',
  'TOKYO': '.T',
  'TOKYOSTOCKEXCHANGE': '.T',
  'TSX': '.TO',
  'TOR': '.TO',
  'TORONTO': '.TO',
  'TORONTOSTOCKEXCHANGE': '.TO',
  'TSXV': '.V',
  'EPA': '.PA',
  'PAR': '.PA',
  'PARIS': '.PA',
  'EURONEXTPARIS': '.PA',
  'AMS': '.AS',
  'AMSTERDAM': '.AS',
  'EURONEXTAMSTERDAM': '.AS',
  'EBR': '.BR',
  'BRUSSELS': '.BR',
  'EURONEXTBRUSSELS': '.BR',
  'ELI': '.LS',
  'LISBON': '.LS',
  'EURONEXTLISBON': '.LS',
  'DUBLIN': '.IR',
  'EURONEXTDUBLIN': '.IR',
  'BIT': '.MI',
  'MIL': '.MI',
  'MILAN': '.MI',
  'BORSAITALIANA': '.MI',
  'EURONEXTMILAN': '.MI',
  'BME': '.MC',
  'MAD': '.MC',
  'MADRID': '.MC',
  'SIX': '.SW',
  'SWX': '.SW',
  'VTX': '.SW',
  'SIXSWISSEXCHANGE': '.SW',
  'ZURICH': '.SW',
  'STO': '.ST',
  'STOCKHOLM': '.ST',
  'OMXSTOCKHOLM': '.ST',
  'NASDAQSTOCKHOLM': '.ST',
  'OSL': '.OL',
  'OSLO': '.OL',
  'OSLOBORS': '.OL',
  'CPH': '.CO',
  'COPENHAGEN': '.CO',
  'NASDAQCOPENHAGEN': '.CO',
  'HEL': '.HE',
  'HELSINKI': '.HE',
  'NASDAQHELSINKI': '.HE',
  'WSE': '.WA',
  'GPW': '.WA',
  'WAR': '.WA',
  'WARSAW': '.WA',
  'VIE': '.VI',
  'WBAG': '.VI',
  'VIENNA': '.VI',
  'WIENERBORSE': '.VI',
  'PRAGUE': '.PR',
  'ASX': '.AX',
  'HKEX': '.HK',
  'HKG': '.HK',
  'SEHK': '.HK',
  'HONGKONG': '.HK',
  'NSE': '.NS',
  'BOM': '.BO',
  'KRX': '.KS',
  'KOSPI': '.KS',
  'KOSDAQ': '.KQ',
  'SGX': '.SI',
  'TWSE': '.TW',
  'TPE': '.TW',
  'SSE': '.SS',
  'SHA': '.SS',
  'SHANGHAI': '.SS',
  'SZSE': '.SZ',
  'SHE': '.SZ',
  'SHENZHEN': '.SZ',
  'B3': '.SA',
  'BVMF': '.SA',
  'BOVESPA': '.SA',
  'BMV': '.MX',
  'JSE': '.JO',
  'TASE': '.TA',
  'NZX': '.NZ',
};

/// A felismert ticker a piaci adatok alakjában: az utótag nélküli tickerhez a tőzsde
/// utótagja (`OTP` + `BSE` → `OTP.BD`, `7203` + `TSE` → `7203.T`). Ha már van
/// utótagja, vagy a tőzsde amerikai vagy ismeretlen, csak nagybetűs lesz.
String listingSymbol(String symbol, String? exchange) {
  final s = symbol.trim().toUpperCase();
  if (s.isEmpty || s.contains('.') || exchange == null) return s;
  final key = exchange
      .toUpperCase()
      .replaceAll(RegExp('[ÖØÓ]'), 'O')
      .replaceAll(RegExp('[ÄÁ]'), 'A')
      .replaceAll('Ü', 'U')
      .replaceAll(RegExp('[^A-Z0-9]'), '');
  final suffix = _suffixes[key];
  return suffix == null ? s : '$s$suffix';
}

/// A tőzsde helyi idejének eltérése az UTC-től a ticker utótagja szerint ([utc] napján, a
/// nyári időszámítással), azoknál a tőzsdéknél, amelyeknek a kereskedési napja nem esik
/// egybe a New York-i dátummal (Ázsia, Óceánia: náluk a helyi délelőtt New Yorkban még az
/// előző nap). Máshol (amerikai, európai, afrikai, közel-keleti tőzsde) `null`: ott a
/// New York-i dátum a kereskedési nap.
Duration? exchangeUtcOffset(String symbol, DateTime utc) {
  final dot = symbol.lastIndexOf('.');
  if (dot <= 0) return null;
  final u = utc.toUtc();
  DateTime firstSunday(int month) {
    var d = DateTime.utc(u.year, month);
    while (d.weekday != DateTime.sunday) {
      d = d.add(const Duration(days: 1));
    }
    return d;
  }

  DateTime lastSunday(int month) {
    var d = DateTime.utc(u.year, month + 1).subtract(const Duration(days: 1));
    while (d.weekday != DateTime.sunday) {
      d = d.subtract(const Duration(days: 1));
    }
    return d;
  }

  return switch (symbol.substring(dot).toUpperCase()) {
    '.T' || '.KS' || '.KQ' => const Duration(hours: 9),
    '.HK' || '.SS' || '.SZ' || '.TW' || '.TWO' || '.SI' => const Duration(hours: 8),
    '.NS' || '.BO' => const Duration(hours: 5, minutes: 30),
    // Sydney: nyári idő október első vasárnapjától április első vasárnapjáig.
    '.AX' => Duration(hours: u.isBefore(firstSunday(4)) || !u.isBefore(firstSunday(10)) ? 11 : 10),
    // Auckland: szeptember utolsó vasárnapjától április első vasárnapjáig.
    '.NZ' => Duration(hours: u.isBefore(firstSunday(4)) || !u.isBefore(lastSunday(9)) ? 13 : 12),
    _ => null,
  };
}

/// A ticker utótagjából a kereskedés valószínű pénzneme (`OTP.BD` → HUF, `SIE.DE` →
/// EUR); utótag nélkül (amerikai tőzsde) vagy ismeretlen utótagnál `null`.
String? currencyForListing(String symbol) {
  final dot = symbol.lastIndexOf('.');
  if (dot <= 0) return null;
  return switch (symbol.substring(dot).toUpperCase()) {
    '.BD' => 'HUF',
    '.DE' || '.F' || '.PA' || '.AS' || '.MI' || '.MC' || '.BR' || '.LS' || '.VI' || '.HE' || '.IR' => 'EUR',
    '.L' => 'GBP',
    '.SW' => 'CHF',
    '.ST' => 'SEK',
    '.OL' => 'NOK',
    '.CO' => 'DKK',
    '.WA' => 'PLN',
    '.PR' => 'CZK',
    '.TO' || '.V' => 'CAD',
    '.AX' => 'AUD',
    '.T' => 'JPY',
    '.HK' => 'HKD',
    _ => null,
  };
}
