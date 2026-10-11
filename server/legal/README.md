# Jogi szövegek

A szerver innen szolgálja ki a felhasználási feltételeket és az adatkezelési tájékoztatót:

| Fájl | Cím |
|---|---|
| `terms.hu.md`, `terms.en.md` | `GET /legal/terms` (`?lang=hu` / `?lang=en`, különben a böngésző nyelve) |
| `privacy.hu.md`, `privacy.en.md` | `GET /legal/privacy` |

A szöveg forrása a „WhatStock – Felhasználási feltételek és adatkezelési tájékoztató” dokumentum
(Claude Docs). Véglegesítés és jogászi átnézés után markdownként exportáld, és tedd ide a két részt
külön fájlba. Amíg nincs fájl, a cím 404-et ad („még nincs közzétéve”). Másik mappa: `LEGAL_DIR`.
