import 'package:test/test.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/mailer.dart';

/// Egy hónapokig futó szerver: a memória és a táblák nem nőnek korlát nélkül.
void main() {
  test('without a mail provider the console mailer keeps only the latest messages and codes', () async {
    final m = ConsoleMailer(redact: true);
    for (var i = 0; i < 1000; i++) {
      await m.send('u$i@example.com', subject: 's', text: 't');
      await m.sendLoginCode('u$i@example.com', '123456');
    }
    expect(m.messages.length, ConsoleMailer.keep);
    expect(m.sent.length, ConsoleMailer.keep);
    expect(m.sent['u999@example.com'], '123456');
  });

  test('sessions unused for a year, old invite counters and old usage rows are purged', () {
    var now = DateTime.utc(2026, 10, 24);
    final store = Store.inMemory()..clock = () => now;
    final (uid, _) = store.createAnonymousUser(null);
    final idle = store.issueToken(uid), active = store.issueToken(uid);
    store.logUsage(uid, 'AAPL', 1, 1);
    store.database.execute('INSERT INTO invite_usage (code, created_at) VALUES (?, ?)', ['X', now.toIso8601String()]);
    now = now.add(const Duration(days: 300));
    expect(store.userIdForToken(active), uid); // használat: a lejárat innen számít
    now = now.add(const Duration(days: 120));
    store.purgeExpired();
    expect(store.userIdForToken(idle), isNull);
    expect(store.userIdForToken(active), uid);
    expect(store.database.select('SELECT * FROM invite_usage'), isEmpty);
    expect(store.database.select('SELECT * FROM usage_log'), isEmpty);
  });
}
