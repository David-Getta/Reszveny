/// Egy webes forrás jellege a webhely alapján, hogy egy pillantásra látszódjon,
/// mennyire érdemes rá támaszkodni. Ismeretlen webhelynél `null` (nem címkézünk).
enum SourceKind {
  /// Tőzsdei/hatósági bejelentés, a cég befektetői oldala.
  official,

  /// A cég saját sajtóközleménye (hivatalos, de a cég szemszögéből íródott).
  pressRelease,

  /// Nagy hírügynökség vagy vezető gazdasági lap.
  majorNews,

  /// Vélemény, elemzői blog, befektetési tippoldal.
  opinion,
}

const _official = [
  'sec.gov', 'bet.hu', 'bse.hu', 'mnb.hu', 'europa.eu', 'federalreserve.gov', 'londonstockexchange.com', //
  'hkexnews.hk', 'boerse-frankfurt.de',
];

const _pressRelease = ['prnewswire.com', 'businesswire.com', 'globenewswire.com', 'accesswire.com', 'newsfile.ca'];

const _majorNews = [
  'reuters.com', 'bloomberg.com', 'ft.com', 'wsj.com', 'cnbc.com', 'apnews.com', 'economist.com', 'nytimes.com', //
  'marketwatch.com', 'barrons.com', 'bbc.com', 'bbc.co.uk', 'theguardian.com', 'nikkei.com', 'handelsblatt.com',
  'lesechos.fr', 'faz.net', 'cnn.com', 'axios.com', 'washingtonpost.com', 'scmp.com', 'portfolio.hu', 'vg.hu',
  'telex.hu', 'hvg.hu', 'napi.hu', 'index.hu', 'bankmonitor.hu',
];

const _opinion = [
  'fool.com', 'seekingalpha.com', 'zacks.com', 'investorplace.com', 'benzinga.com', '247wallst.com', //
  'insidermonkey.com', 'simplywall.st', 'gurufocus.com', 'tipranks.com', 'marketbeat.com', 'thestreet.com',
  'investing.com', 'stocktwits.com', 'medium.com', 'substack.com', 'reddit.com',
];

/// A forrás jellege az URL webhelye alapján.
SourceKind? sourceKindOf(String url) {
  final uri = Uri.tryParse(url);
  final host = uri?.host.toLowerCase().replaceFirst(RegExp(r'^www\.'), '') ?? '';
  if (host.isEmpty) return null;
  bool any(List<String> domains) => domains.any((d) => host == d || host.endsWith('.$d'));
  // Csak ismert webhely kap jelzést: az `ir.` / `investors.` gépnév vagy egy `/investors`
  // útvonal bárkinek kiosztható (ir.pump-and-dump.biz), így nem jelenthet „hivatalost”.
  if (any(_official) || host.endsWith('.gov')) return SourceKind.official;
  if (any(_pressRelease)) return SourceKind.pressRelease;
  if (any(_majorNews)) return SourceKind.majorNews;
  if (any(_opinion)) return SourceKind.opinion;
  return null;
}
