#!/usr/bin/env python3
"""Bolti adatlapok előállítása a `tool/store_listing/<kód>.json` fájlokból, fastlane
elrendezésben: `fastlane/metadata/android/<Play-nyelv>/` (supply) és
`fastlane/metadata/ios/<App Store-nyelv>/` (deliver). Futtatás: python3 tool/store_listing/export.py

A forrásfájlok kulcsai: title (≤30), subtitle (≤30, csak iOS), short_description (≤80, csak
Play), promotional_text (≤170, csak iOS), keywords (≤100 bájt, vesszővel, csak iOS),
full_description (≤4000). A korlátokat a `test/store_listing_test.dart` ellenőrzi.
"""
import json
import os
import shutil

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
SRC = os.path.join(ROOT, 'tool', 'store_listing')
OUT = os.path.join(ROOT, 'fastlane', 'metadata')

# Az app nyelvkódja → Google Play nyelvkódok.
PLAY = {
    'af': ['af'], 'am': ['am'], 'ar': ['ar'], 'az': ['az-AZ'], 'be': ['be'], 'bg': ['bg'],
    'bn': ['bn-BD'], 'ca': ['ca'], 'cs': ['cs-CZ'], 'da': ['da-DK'], 'de': ['de-DE'], 'el': ['el-GR'],
    'en': ['en-US', 'en-GB', 'en-AU', 'en-CA', 'en-IN', 'en-SG', 'en-ZA'],
    'es': ['es-ES', 'es-419', 'es-US'], 'fa': ['fa', 'fa-AE', 'fa-AF', 'fa-IR'], 'fi': ['fi-FI'],
    'fil': ['fil'], 'fr': ['fr-FR', 'fr-CA'], 'gl': ['gl-ES'], 'gu': ['gu'], 'he': ['iw-IL'],
    'hi': ['hi-IN'], 'hr': ['hr'], 'hu': ['hu-HU'], 'hy': ['hy-AM'], 'id': ['id'], 'it': ['it-IT'],
    'ja': ['ja-JP'], 'ka': ['ka-GE'], 'kk': ['kk'], 'km': ['km-KH'], 'kn': ['kn-IN'], 'ko': ['ko-KR'],
    'ky': ['ky-KG'], 'lo': ['lo-LA'], 'lt': ['lt'], 'lv': ['lv'], 'mk': ['mk-MK'], 'ml': ['ml-IN'],
    'mn': ['mn-MN'], 'mr': ['mr-IN'], 'ms': ['ms', 'ms-MY'], 'my': ['my-MM'], 'nb': ['no-NO'],
    'ne': ['ne-NP'], 'nl': ['nl-NL'], 'pa': ['pa'], 'pl': ['pl-PL'], 'pt': ['pt-PT'], 'pt_BR': ['pt-BR'],
    'ro': ['ro'], 'ru': ['ru-RU'], 'si': ['si-LK'], 'sk': ['sk'], 'sl': ['sl'], 'sq': ['sq'], 'sr': ['sr'],
    'sv': ['sv-SE'], 'sw': ['sw'], 'ta': ['ta-IN'], 'te': ['te-IN'], 'th': ['th'], 'tr': ['tr-TR'],
    'uk': ['uk'], 'ur': ['ur'], 'uz': ['uz'], 'vi': ['vi'], 'zh': ['zh-CN'], 'zh_Hant_HK': ['zh-HK', 'zh-TW'],
    'zu': ['zu'],
}

# Az app nyelvkódja → App Store Connect nyelvkódok.
IOS = {
    'ar': ['ar-SA'], 'ca': ['ca'], 'cs': ['cs'], 'da': ['da'], 'de': ['de-DE'], 'el': ['el'],
    'en': ['en-US', 'en-GB', 'en-AU', 'en-CA'], 'es': ['es-ES', 'es-MX'], 'fi': ['fi'],
    'fr': ['fr-FR', 'fr-CA'], 'he': ['he'], 'hi': ['hi'], 'hr': ['hr'], 'hu': ['hu'], 'id': ['id'],
    'it': ['it'], 'ja': ['ja'], 'ko': ['ko'], 'ms': ['ms'], 'nb': ['no'], 'nl': ['nl-NL'], 'pl': ['pl'],
    'pt': ['pt-PT'], 'pt_BR': ['pt-BR'], 'ro': ['ro'], 'ru': ['ru'], 'sk': ['sk'], 'sv': ['sv'],
    'th': ['th'], 'tr': ['tr'], 'uk': ['uk'], 'vi': ['vi'], 'zh': ['zh-Hans'], 'zh_Hant_HK': ['zh-Hant'],
}


def write(path, text):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w', encoding='utf-8') as f:
        f.write(text.strip() + '\n')


def main():
    for sub in ('android', 'ios'):
        shutil.rmtree(os.path.join(OUT, sub), ignore_errors=True)
    done = []
    for code in sorted(set(PLAY) | set(IOS)):
        path = os.path.join(SRC, f'{code}.json')
        if not os.path.exists(path):
            continue
        with open(path, encoding='utf-8') as f:
            d = json.load(f)
        for loc in PLAY.get(code, []):
            base = os.path.join(OUT, 'android', loc)
            write(os.path.join(base, 'title.txt'), d['title'])
            write(os.path.join(base, 'short_description.txt'), d['short_description'])
            write(os.path.join(base, 'full_description.txt'), d['full_description'])
        for loc in IOS.get(code, []):
            base = os.path.join(OUT, 'ios', loc)
            write(os.path.join(base, 'name.txt'), d['title'])
            write(os.path.join(base, 'subtitle.txt'), d['subtitle'])
            write(os.path.join(base, 'promotional_text.txt'), d['promotional_text'])
            write(os.path.join(base, 'keywords.txt'), d['keywords'])
            write(os.path.join(base, 'description.txt'), d['full_description'])
        done.append(code)
    print(f'{len(done)} nyelv: {" ".join(done)}')


if __name__ == '__main__':
    main()
