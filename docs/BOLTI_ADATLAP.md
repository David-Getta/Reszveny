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

A fájl mindkét Xcode-projektben a Runner cél erőforrása (`project.pbxproj`, a `store_compliance_test`
őrzi). **Tulajdonosi lépés (natív build itt nem készíthető):** az archívum „Privacy Report”-jában
ellenőrizhető; az App Store Connect „App Privacy” kérdőívét ugyanezekkel a válaszokkal kell kitölteni.

Az AI-funkciók (elemzés, felismerés, kérdések) adatai az Anthropichoz (Claude) kerülnek: az app az első
AI-kérés előtt egyszer engedélyt kér (App Store 5.1.2(i)), a Beállításokban visszavonható. Az App Privacy
kérdőívben a fotók/képernyőképek, a kérdések és a portfólió „az app működéséhez” használt, nem követéshez
kötött adat; az Anthropic adatfeldolgozó (nem harmadik fél, amellyel az app adatot megoszt).

Az `Info.plist`-ekben `ITSAppUsesNonExemptEncryption = false` (csak szabványos HTTPS), így feltöltéskor
nincs exportengedély-kérdés; a macOS sandbox jogosultságai közt a felhasználó által választott helyre
írás is engedélyezett (CSV-export, naptárfájl, biztonsági mentés).

## Google Play „Adatbiztonság” kérdőív

A Play Console-ban kitöltendő (nem kód); az Apple-manifesttel azonos válaszok:

| Kérdés | Válasz |
|---|---|
| Gyűjt vagy megoszt adatot? | Gyűjt, nem oszt meg harmadik féllel |
| Titkosítva továbbítja? | Igen (HTTPS) |
| Kérhető a törlés? | Igen, az appból (Beállítások → Fiók törlése) és böngészőből: `<PUBLIC_URL>/account/delete` (ezt a címet kell megadni a Play Console „Fióktörlés URL” mezőjében) |
| Személyes adat | E-mail cím – fiókos belépés, kötelező a fiókhoz, az app működéséhez |
| Pénzügyi adat | Vásárlási előzmény – az előfizetés ellenőrzéséhez, az app működéséhez; egyéb pénzügyi adat (a szinkronizált portfólió) – csak fiókkal, az app működéséhez |
| Egyéb felhasználói tartalom | A szinkronizált kedvencek, riasztások és jegyzetek – csak fiókkal, az app működéséhez, kérésre törölhető |
| Alkalmazás-tevékenység | Használati események – választható (hozzájárulás a kezdőképernyőn), elemzéshez, személyhez nem köthető; az elemzések naplója (melyik részvény, mikor) – a fiókhoz kötve, a keret elszámolásához |
| Alkalmazás-információ | Hibajelentések – választható, kitakarva, személyhez nem köthető |
| AI-válasz jelentése | Választható: a jelentett válasz szövege, az ok és a megjegyzés – fiók nélkül, 180 napig, a tartalom átnézéséhez |
| Törlés után megmarad | Csak kulcsolt ujjlenyomatok (a szerver titkával): a vásárlások bizonylata (hogy ne legyen újra beváltható, és egy még fizetett bolti előfizetés visszaállítható legyen) és a beváltott ajánlás postafiókja; a tesztelői kód és a meghívó helye véletlen azonosítóval. Az adatkezelési tájékoztatóban fel kell tüntetni. |
| Nem gyűjt | hely, névjegyek, fotók (a kép csak a felismeréshez megy át, nem tárolódik), eszközazonosítók |

A portfólió, a kedvencek, a riasztások és a jegyzetek a készüléken vannak; fiókkal a felhasználó
saját szerverünkre szinkronizálja őket (ez is „gyűjtött” adat: *egyéb felhasználói tartalom*,
az app működéséhez, kérésre törölhető).

## Microsoft Store csomag (MSIX)

A Windows build után `dart run msix:create --store` készíti a Store-ba feltölthető MSIX-et a
`pubspec.yaml` `msix_config` szakasza alapján (név, ikon, képességek: csak internet, az app nyelvei közül a Microsoft Store által támogatott 87; a csomag verziója a `version:` mezőből). A Partner
Centerben kapott *Package/Identity/Name* és *Publisher* értéket kell beírni (`identity_name`,
`publisher`) – tulajdonosi adat; helyi kipróbáláshoz a `dart run msix:create` saját tesztaláírást
készít. A kiadási munkafolyamat egyelőre a sima zip-et adja; az MSIX-lépés a Partner Center-fiók után
kerülhet be.

