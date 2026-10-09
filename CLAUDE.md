# Reszveny – munkaszabályok

- **Nyelv**: a felhasználóval magyarul beszélünk; a kód kommentjei magyarok, a felület
  alapnyelve angol, 44 nyelvre fordítva (`lib/l10n/arb`).
- **Minden fejlesztés végén tedd be a chatbe a legújabb verziót**: képernyőképek a
  teszt-harnessből (`flutter test --tags screenshot --dart-define=SHOTS=<mappa> test/screenshots`)
  és a böngészős előnézet frissítése (`flutter build web --no-web-resources-cdn`, majd
  Artifact-ként publikálva). Natív build itt nem készíthető, ezt mindig mondd el.
- **„f” = fejleszd tovább**: ha a felhasználó csak ennyit ír, folytasd a `docs/KONCEPCIO.md`
  ütemterve szerinti következő lépéssel, és a végén mutasd meg a legújabb verziót.
- Minden új felületi szöveg az `app_en.arb`-ba kerül, és mind a 44 nyelvre le kell fordítani
  (az `arb_completeness_test` ellenőrzi). Kulcsok soha nem kerülnek a kódba (`--dart-define`).
- Commit előtt: `dart format --line-length 120`, `flutter analyze --fatal-infos`, `flutter test`.
- Fejlesztés a `claude/eager-bohr-pi0oy9` ágon, commit és push minden lezárt lépés után.
