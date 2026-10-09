# Reszveny

**Lefotózunk egy részvényt, és az app kiírja róla az összes tudnivalót, a legrészletesebben.**

Egy kódbázis, öt platform: **iOS, iPadOS, macOS, Android, Windows** (Flutter).
A felület **44 nyelven** érhető el, az alapértelmezett az angol; a részletes lista és a
koncepció a [`docs/KONCEPCIO.md`](docs/KONCEPCIO.md) fájlban.

## Hogyan működik

1. **Kép** – kamera vagy galéria (asztali gépen fájlválasztó).
2. **Felismerés** – a kép a Claude API látás-képességével strukturált JSON-ná alakul:
   ticker, cégnév, tőzsde, megbízhatóság, mit látott a képen. Papír részvény, bróker-app
   képernyője, újság és céglogó egyformán működik.
3. **Adatok** – a tickerhez árfolyam, cégprofil, értékelési és pénzügyi mutatók, osztalék,
   elemzői konszenzus és hírek töltődnek (Finnhub), szekciónként, hibatűrően.
4. **Megjelenítés** – részletes, szekciókra bontott nézet a felhasználó nyelvén és
   számformátumában.

API-kulcs nélkül az app **demó módban** indul (AAPL, MSFT, NVDA, OTP mintaadatokkal), így a
felület kulcs nélkül is végigjárható.

## Fejlesztés

Követelmény: [Flutter](https://docs.flutter.dev/get-started/install) 3.47 vagy újabb.

```bash
flutter pub get
flutter gen-l10n                 # fordítások generálása (lib/l10n/arb → lib/l10n/generated)
flutter analyze
flutter test

# futtatás kulcsokkal (a kulcsok soha nem kerülnek a forráskódba)
flutter run --dart-define=ANTHROPIC_API_KEY=sk-ant-... --dart-define=FINNHUB_API_KEY=...
```

Platform-célok: `flutter run -d ios|macos|android|windows` – az iPad ugyanazt az iOS-buildet
kapja adaptív elrendezéssel.

| Beállítás (`--dart-define`) | Jelentés | Alapértelmezés |
|---|---|---|
| `ANTHROPIC_API_KEY` | képfelismerés kulcsa | – (nélküle csak kézi ticker) |
| `ANTHROPIC_MODEL` | használt modell | `claude-opus-5-5` |
| `ANTHROPIC_BASE_URL` | saját proxy éles kiadáshoz | `https://api.anthropic.com` |
| `FINNHUB_API_KEY` | piaci adatok kulcsa | – (nélküle demó mód) |
| `FINNHUB_BASE_URL` | saját proxy éles kiadáshoz | `https://finnhub.io/api/v1` |

## Könyvtárszerkezet

```
lib/
  main.dart, app.dart, app_services.dart   belépés, téma, nyelvkezelés, szolgáltatások
  core/        konfiguráció, modellek, hibakódok, formázás, nyelvválasztás tárolása
  features/
    capture/       kamera + galéria (image_picker)
    recognition/   StockRecognizer interfész, Claude látás, heurisztikus ticker-kereső
    market_data/   MarketDataProvider interfész, Finnhub, demó adatok
    home/          kezdőképernyő, jelölt-választó
    stock_detail/  részletes nézet szekciói
    settings/      nyelvválasztó, névjegy
  l10n/
    arb/           app_<nyelv>.arb – 44 nyelv, a sablon az app_en.arb
    generated/     flutter gen-l10n kimenete (verziókezelt, hogy a build ne függjön tőle)
test/          egységtesztek (parse-olás, ticker-kereső, nyelvfeloldás, ARB-teljesség), widget-tesztek
.github/       CI: analyze + test, majd Android / Windows / iOS+macOS build
```

## Új nyelv vagy új szöveg

- Új szöveg: vedd fel az `lib/l10n/arb/app_en.arb` fájlba (helyőrzőkkel, ha kell), majd minden
  `app_<nyelv>.arb`-ba. Az `arb_completeness_test` jelzi, ha valahol hiányzik.
- Új nyelv: `app_<kód>.arb` + egy sor a `lib/l10n/supported_locales.dart` listájában.
  Olyan nyelvnél, amit a Flutter beépített szövegei nem ismernek, a tartalék-delegate
  automatikusan angol rendszer-szövegeket ad.
