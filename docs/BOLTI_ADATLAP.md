# Bolti adatlapok és képernyőképek (5k)

## Szövegek

A forrás a `tool/store_listing/<kód>.json` (70 nyelv: az app nyelvei közül azok, amelyeket a Google
Play vagy az App Store adatlapként támogat, plusz brazil portugál). Mezők és korlátok:

| Mező | Hol | Korlát |
|---|---|---|
| `title` | Play cím, App Store név | 30 karakter |
| `subtitle` | App Store alcím | 30 karakter |
| `short_description` | Play rövid leírás | 80 karakter |
| `promotional_text` | App Store promóciós szöveg | 170 karakter |
| `keywords` | App Store kulcsszavak, vesszővel | 100 bájt |
| `full_description` | Play teljes leírás, App Store leírás | 4000 karakter |

A `python3 tool/store_listing/export.py` ebből előállítja a fastlane-mappát:
`fastlane/metadata/android/<Play-nyelv>/` (`supply`) és `fastlane/metadata/ios/<App Store-nyelv>/`
(`deliver`). A korlátokat és a mappa frissességét a `test/store_listing_test.dart` ellenőrzi.
Az angol és a magyar kézzel írt; a többi fordítás, a ritkább nyelveken (pl. burmai, szingaléz,
amhara) érdemes anyanyelvi ellenőrzést kérni a megjelenés előtt.

## Képernyőképek

```
flutter test --tags screenshot --dart-define=SHOTS=<mappa> --dart-define=STORE_LANGS=en,hu test/screenshots
```

Nyelvenként és eszközönként három feliratos kép kerül a `<mappa>/store/` alá a boltok pontos
méreteiben: `iphone69` (1320×2868, App Store 6,9"), `android` (1080×2160, Google Play telefon),
`ipad13` (2064×2752) és `desktop` (2880×1800, Mac App Store, Microsoft Store). A felirat az app
lefordított bevezető szövege. A teszt-harness betűkészlete latin, cirill és görög írást rajzol
jól; a többi írás (kínai, japán, arab, indiai írások stb.) képeihez a natív buildből érdemes
képernyőképet készíteni.

## Adatvédelmi manifest (Apple)

Az App Store és a Mac App Store beküldéshez kell egy `PrivacyInfo.xcprivacy` a Runner célban:
`ios/Runner/PrivacyInfo.xcprivacy` és `macos/Runner/PrivacyInfo.xcprivacy`. Tartalma: nincs
követés; gyűjtött adatok – e-mail cím és vásárlási előzmény (a fiókhoz kötve, az app működéséhez),
használati események és hibajelentések (hozzájárulással, személyhez nem köthetően); használt
„indokolt” API-k – UserDefaults (CA92.1, beállítások és portfólió helyi tárolása) és
fájl-időbélyegek (C617.1, gyorsítótár és mentett fájlok). A beépülők (shared_preferences,
path_provider stb.) a saját manifestjüket hozzák.

**Tulajdonosi lépés (natív build itt nem készíthető):** Xcode-ban a Runner célhoz hozzá kell adni a
fájlt (File → Add Files to "Runner"…, Target Membership: Runner), külön az iOS és a macOS
projektben; utána az archívum „Privacy Report”-jában ellenőrizhető. Az App Store Connect
„App Privacy” kérdőívét ugyanezekkel a válaszokkal kell kitölteni.

Az `Info.plist`-ekben `ITSAppUsesNonExemptEncryption = false` (csak szabványos HTTPS), így feltöltéskor
nincs exportengedély-kérdés; a macOS sandbox jogosultságai közt a felhasználó által választott helyre
írás is engedélyezett (CSV-export, naptárfájl, biztonsági mentés).

