#!/usr/bin/env python3
"""A szerver fogalomtár-oldalának adatai az app szövegeiből.

A mutatók sorrendje és párjai (címke → magyarázat) a
lib/features/stock_detail/metric_glossary.dart-ból, a szövegek a magyar és az
angol ARB-ből. A kimenet: server/lib/src/glossary_data.dart (generált fájl – a
szerver nem látja az app fájljait, mert a Railway gyökere a /server). Az app
tesztje (test/server_glossary_test.dart) ellenőrzi, hogy a kettő egyezik.

Futtatás a repó gyökeréből: python3 tool/glossary/gen_server_glossary.py
"""
import json
import pathlib
import re
import shutil
import subprocess

ROOT = pathlib.Path(__file__).resolve().parents[2]
pairs = re.findall(r'l10n\.(\w+): l10n\.(\w+),', (ROOT / 'lib/features/stock_detail/metric_glossary.dart').read_text())
langs = {}
for lang in ('hu', 'en'):
    arb = json.loads((ROOT / f'lib/l10n/arb/app_{lang}.arb').read_text(encoding='utf-8'))
    langs[lang] = [(arb[label], arb[gloss]) for label, gloss in pairs]


def dart(s):
    return "'" + s.replace('\\', '\\\\').replace("'", "\\'").replace('$', '\\$') + "'"


out = ['// GENERÁLT FÁJL – ne szerkeszd kézzel.',
       '// Forrás: lib/features/stock_detail/metric_glossary.dart és az app hu/en ARB-je;',
       '// újragenerálás: python3 tool/glossary/gen_server_glossary.py',
       '',
       '/// A mutatók közérthető magyarázata (címke, magyarázat) nyelvenként, az app sorrendjében.',
       'const glossaryEntries = <String, List<(String, String)>>{']
for lang, entries in langs.items():
    out.append(f"  '{lang}': [")
    for label, text in entries:
        out.append(f'    ({dart(label)}, {dart(text)}),')
    out.append('  ],')
out.append('};')
(ROOT / 'server/lib/src/glossary_data.dart').write_text('\n'.join(out) + '\n', encoding='utf-8')
# A szerver CI-je formázást ellenőriz: a generált fájl is formázva kerül be.
dart = shutil.which('dart') or '/opt/flutter/bin/cache/dart-sdk/bin/dart'
subprocess.run([dart, 'format', '--line-length', '120', 'server/lib/src/glossary_data.dart'], cwd=ROOT, check=False,
               stdout=subprocess.DEVNULL)
print(f'{len(pairs)} mutató, nyelvek: {", ".join(langs)}')
