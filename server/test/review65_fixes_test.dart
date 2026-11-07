import 'package:test/test.dart';
import 'package:whatstock_server/src/db.dart';

/// A 65. kódátnézés (a 0.2.316–0.2.321 változásainak hibavadászata) szerveroldali javítása.
void main() {
  test('purging an abandoned anonymous account frees its invite and tester seats; a GDPR deletion keeps them', () {
    final store = Store.inMemory();
    var now = DateTime.utc(2026, 1, 1);
    store.clock = () => now;
    final (idle, _) = store.createAnonymousUser(null);
    final (gone, _) = store.createAnonymousUser(null);
    store.addInviteDevice('TESTER-01', idle);
    store.addInviteDevice('TESTER-01', gone);
    expect(store.inviteDeviceCount('TESTER-01'), 2);

    // A felhasználó kérte törlés: a hely névtelenítve foglalt marad (a keret nem kezdhető újra).
    store.deleteUser(gone);
    expect(store.inviteDeviceCount('TESTER-01'), 2);

    // Az elhagyott névtelen fiók kitakarítása: a hely felszabadul, a visszatérő eszköz új
    // névtelen fiókot nyithat ugyanazzal a meghívóval.
    now = now.add(Store.anonymousIdle + const Duration(days: 1));
    expect(store.purgeAbandonedAnonymous(), 1);
    expect(store.userExists(idle), isFalse);
    expect(store.inviteDeviceCount('TESTER-01'), 1);
  });
}
