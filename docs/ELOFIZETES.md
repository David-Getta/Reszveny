# StockLens – előfizetés és elemzés-keretek

## Csomagok

| Csomag | Termékazonosító | Elemzés / hó | Megjegyzés |
|---|---|---|---|
| Próbaidő | – | 3 elemzés 3 napig | első indításkor automatikusan indul |
| Normál | `stocklens.sub.normal` | 8 | |
| Pro | `stocklens.sub.pro` | 20 | „Legnépszerűbb” jelölés |
| Max | `stocklens.sub.max` | 80 | „Legjobb ár/érték” jelölés |
| Ultra | `stocklens.sub.ultra` | 150 | |

Extra elemzés-csomagok (fogyó termékek, nem járnak le, a havi keret után fogynak):
`stocklens.pack.5` (+5), `stocklens.pack.20` (+20), `stocklens.pack.50` (+50).

## Árazás

Az alapár USD-ben van megadva (`features/billing/pricing.dart`); a boltokban ezeket az
árszinteket kell beállítani, és a bolt minden régióban a helyi pénznemben mutatja (az App Store
és a Play ezt automatikusan teszi). A demó bolt és a böngészős előnézet az USD-alapárból számol
helyi árat az ECB-árfolyammal, a pénznem szokása szerint kerekítve (HUF: „…90”, EUR/GBP: „x,99”).

| Termék | USD | kb. HUF (360 Ft/USD) | EUR | Költség (Sonnet 5.5, 4 keresés) | Költség (Opus 5.5, 6 keresés) |
|---|---|---|---|---|---|
| Normál (8) | 7,99 | 2 890 | 7,99 | ≈ 2 USD | ≈ 6 USD |
| Pro (20) | 15,99 | 5 790 | 14,99 | ≈ 5 USD | ≈ 15 USD |
| Max (80) | 39,99 | 14 390 | 36,99 | ≈ 20 USD | ≈ 60 USD |
| Ultra (150) | 64,99 | 23 390 | 59,99 | ≈ 37 USD | ≈ 112 USD |
| +5 | 4,99 | 1 790 | 4,99 | ≈ 1,3 USD | ≈ 3,8 USD |
| +20 | 17,99 | 6 490 | 16,99 | ≈ 5 USD | ≈ 15 USD |
| +50 | 39,99 | 14 390 | 36,99 | ≈ 12,5 USD | ≈ 37 USD |

A bolti jutalék 15–30 %. Az árak akkor termelik ki a költséget, ha az elemzés
**Sonnet 5.5-tel** fut (kb. 0,25 USD/elemzés webkereséssel): minden csomag nyereséges a keret
teljes kihasználása mellett is. **Opus 5.5-tel** (kb. 0,75 USD/elemzés) a Max és az Ultra
veszteséges lenne, ha a felhasználó mindent felhasznál. Javasolt beállítás: Normál és Pro
Sonnet 5.5 `medium`/`high`; Max és Ultra Sonnet 5.5 `high`; az Opus-alapú mélyelemzés külön
termék vagy magasabb árú csomag lehet később.

A havi keret az AI-elemzésekre vonatkozik. A fotófelismerés, az élő adatok, a grafikon, a
kedvencek és a 44 nyelv minden csomagban korlátlan.

## Kliens (kész)

- `features/billing/plan.dart` – csomagok, keretek, termékazonosítók.
- `features/billing/entitlement_service.dart` – jogosultság: csomag, időszak, felhasznált és
  extra elemzések; próbaidő indítása; időszak-görgetés; `check()` → ok / nincs csomag /
  lejárt próba / kimerült keret; `consume()` elemzés után.
- `features/billing/billing_service.dart` + `store_billing_service.dart` (App Store, Play,
  macOS: `in_app_purchase`) + `demo_billing_service.dart` (szimulált bolt).
- `features/billing/billing_controller.dart` – vásárlási esemény → jogosultság.
- `features/billing/paywall_page.dart` – csomagválasztó; `usage_chip.dart` – használat-kijelző
  az oldalsávban, a kezdőképernyőn és a beállításokban.
- `ReportStore.generate` elemzés előtt ellenőrzi a keretet, siker után elhasznál egyet;
  kimerült keretnél a kártya a csomagválasztóra visz.

## Szerveroldal (következő lépés, kiadás előtt kötelező)

A kliens önmagában nem bízható meg sem a kulccsal, sem a kvótával. Az éles működés:

1. **Proxy**: az app nem közvetlenül az Anthropic és a Finnhub API-t hívja, hanem a saját
   backendet (`ANTHROPIC_BASE_URL` / `FINNHUB_BASE_URL` a proxyra mutat). A kulcsok csak a
   szerveren vannak.
2. **Azonosítás**: eszköz- vagy fiókazonosító (Sign in with Apple / Google), hogy a csomag
   minden eszközön ugyanaz legyen.
3. **Vásárlás-ellenőrzés**: az `in_app_purchase` által adott `verificationData` (App Store
   Server API / Play Developer API) ellenőrzése a szerveren, vagy RevenueCat használata, ami ezt
   és az előfizetés-események (megújulás, lemondás, visszatérítés) kezelését is elvégzi.
4. **Kvóta-nyilvántartás**: a szerver vezeti az időszakot, a felhasznált és az extra
   elemzéseket; az `/v1/analyze` végpont csak akkor fut, ha van keret, és levon egyet.
   A kliens a `/v1/me` válaszából tölti az `EntitlementState`-et (`EntitlementService.replace`).
5. **Költségkorlát**: az elemzés költsége (Opus 5.5 + webkeresés) kb. 0,5–1 USD; a csomagárak
   ezt és a bolti jutalékot (15–30 %) fedezzék. A szerver effort/webkeresés beállítással
   csomagonként is differenciálhat (pl. Normál: `medium`, Max: `high`).

## Boltok beállítása

- App Store Connect: automatikusan megújuló előfizetési csoport a négy csomaggal (havi),
  3 napos bevezető ajánlat (ingyenes próba) a Normál csomagon, fogyó termékek a csomagokhoz.
  A próbaidőt az app helyben is kezeli, hogy fizetés nélkül is kipróbálható legyen.
- Play Console: ugyanezek az azonosítók; az `in_app_purchase` Androidon a Play Billinget
  használja. A visszaállítás a `restorePurchases` hívással történik.
- Windows (bolton kívül) és web: még nincs fizetés; a demó bolt fut. Megoldás: Stripe Checkout
  böngészőben + a fiókhoz kötött jogosultság a szerveren.
