# WhatStock – a szerver élesítése (lépésről lépésre)

A szerver (`server/`) kész: ő tartja az Anthropic- és a Finnhub-kulcsot, számolja a kereteket,
és ellenőrzi a vásárlásokat. Az MI-t nem ő futtatja (az az Anthropic gépein megy), ezért egy kicsi,
olcsó gép is elég neki.

## Hol fusson?

| Szolgáltató | Ár (tájékoztató, regisztrációkor ellenőrizd) | Kezelés | Ajánlás |
|---|---|---|---|
| **Railway** | 5 USD/hó (Hobby csomag, benne 5 USD használat – egy ilyen kis szervernek elég) | teljesen böngészőből, a GitHub-repóból épít | **ezt javasoljuk** |
| Hetzner Cloud | kb. 4–6 EUR/hó a legkisebb gép | parancssor (Linux, Docker, HTTPS-beállítás) | a legolcsóbb, de több kézi munka |
| Fly.io | használat szerint, kb. 2–5 USD/hó | parancssori eszköz (`fly`) | jó, de terminál kell |

A HTTPS (lakat) mindhárom esetben megoldható; a Railway automatikusan adja.

## Amire előtte szükség van

1. **Anthropic API-kulcs** – console.anthropic.com → API Keys → Create Key (név: `whatstock-server`).
   A kulcsot csak a szerver beállításaiba írd be, sehova máshova (chatbe se).
   A Limits oldalon érdemes havi költéskorlátot beállítani.
2. **Finnhub-kulcs** – finnhub.io → regisztráció → ingyenes kulcs. A zárt teszthez elég; nyilvános,
   fizetős indulás előtt kereskedelmi licenc kell (lásd `ELOFIZETES.md`).

## Railway – lépések

1. **Regisztráció**: railway.com → *Login with GitHub* → a Hobby csomag kiválasztása (bankkártya).
2. **Projekt**: *New Project* → *Deploy from GitHub repo* → `David-Getta/Reszveny`
   (ha kéri, engedélyezd a Railway-nek a repó elérését).
3. **Beállítások** (a szolgáltatásra kattintva → *Settings*):
   - *Source → Branch*: `claude/eager-bohr-pi0oy9` (vagy később `main`)
   - *Source → Root Directory*: `/server`
   - a build a `server/Dockerfile`-ból és a `server/railway.json`-ból automatikusan megy.
4. **Tartós tároló** (különben minden újraindításkor elvesznek a fiókok és a keretek):
   a szolgáltatáson jobb klikk → *Attach Volume* → *Mount path*: `/data`.
5. **Változók** (*Variables* fül → *New Variable*):

   | Név | Érték |
   |---|---|
   | `ANTHROPIC_API_KEY` | az Anthropic-kulcs |
   | `FINNHUB_API_KEY` | a Finnhub-kulcs |
   | `TWELVEDATA_API_KEY` | a Twelve Data-kulcs (twelvedata.com, ingyenes): az árfolyamgrafikonhoz kell, mert a Finnhub ingyenes csomagja nem adja |
   | `PUBLIC_URL` | a 6. lépésben kapott cím (pl. `https://whatstock-production.up.railway.app`) |

   A szerver a két kulcs nélkül el sem indul (a napló: „Hiányzó ANTHROPIC_API_KEY vagy
   FINNHUB_API_KEY”), ezért ezeket az első sikeres építés előtt vagy közvetlenül utána add meg.
   A többi (modell, próbamodell, port, adatbázis) alapértéke jó. A `VERIFY_MODE` most maradjon
   `dev` (lásd lent).
6. **Nyilvános cím**: *Settings → Networking → Generate Domain*. A kapott címet írd be a
   `PUBLIC_URL`-be. Ellenőrzés: a böngészőben a `https://<cím>/healthz` oldalon „ok” jelenik meg.
7. **Az app összekötése**: GitHub → a repó *Settings → Secrets and variables → Actions → Variables*
   → *New repository variable*: `BACKEND_URL` = a szerver címe (`https://…`, perjel nélkül a végén).
   A következő kiadástól a letölthető appok (Android, Mac, Windows, web) már ezt a szervert
   használják: valódi árfolyamok és valódi AI-elemzések a demó helyett.

## Biztonság a zárt teszt alatt

- A szerver most **fejlesztői módban** ellenőrzi a vásárlásokat (`VERIFY_MODE=dev`): minden
  vásárlást elfogad. Ezért az appot csak ismerősöknek add oda, ne tedd ki nyilvánosan, amíg a
  valódi bolti ellenőrzés (5b) el nem készül.
- Amíg az Anthropic-fiókon csak a promóciós kredit van, és az automatikus feltöltés ki van
  kapcsolva, a legrosszabb eset is ennyi: elfogy a kredit, és a hívások leállnak. Kártyaterhelés
  nincs.
- A szerver naplójában (Railway → *Deployments → Logs*) látszik minden hívás és hiba.

## Zárt előzetes: csak meghívókóddal

Ha az `INVITE_CODES` változó be van állítva, a szerver csak érvényes meghívókóddal enged be. Az
app első indításkor elkéri a kódot, és minden képernyő alján vízjelként kiírja, kinek szól a
példány. Egy kiszivárgott képernyőképről is látszik, kitől származik.

Formátum (vesszővel elválasztva, több meghívott is lehet):

    KÓD:Név[:utolsó nap][:eszközök száma][:napi elemzés]

Példa: `DAVID-4Q8ZRT:Getta Dávid::5:30,GABOR-K7M2XQ:Schulz Gábor:2026-11-30:2:10`

- **utolsó nap** (ÉÉÉÉ-HH-NN): eddig a napig érvényes, utána „lejárt”; üresen hagyva nem jár le.
- **eszközök száma** (alapból 3): ennyi telefonon/gépen használható. Ha valaki továbbadja az appot
  a kóddal, a következő eszköz már nem jut be.
- **napi elemzés** (alapból 15): kódonként ennyi AI-elemzés naponta, így a költség felülről korlátos.
- **visszavonás**: töröld a kódot a változóból, és mentsd. A Railway újraindítja a szervert,
  onnantól az a kód semmire nem jó.
- A saját kódodat is vedd fel, mert a kódot minden példány kéri, a tiéd is.

## Később (éles indulás előtt)

- `VERIFY_MODE=store` a bolti fiókok és az 5b után; Stripe-kulcsok (`STRIPE_*`) az asztali és webes
  fizetéshez; `RESEND_API_KEY` és `MAIL_FROM` az e-mailes belépéshez (nélkülük a belépőkód csak a
  naplóba kerül).
- Saját domain (pl. `api.whatstock.app`) a Railway *Custom Domain* beállításával.
- Rendszeres mentés a `/data` kötetről.
