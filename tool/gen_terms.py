#!/usr/bin/env python3
"""Iparág- és országnevek fordítótáblája: tool/terms/<nyelv>.json → lib/l10n/terms_data.dart.

Futtatás a repó gyökeréből: python3 tool/gen_terms.py
"""
import glob
import json
import os


def dart_str(s):
    return "'" + s.replace("\\", "\\\\").replace("'", "\\'").replace("$", "\\$") + "'"


def main():
    files = sorted(glob.glob("tool/terms/*.json"))
    en = json.load(open("tool/terms/en.json", encoding="utf-8"))
    out = [
        "// GENERÁLT FÁJL – ne szerkeszd kézzel. Forrás: tool/terms/*.json, generátor: tool/gen_terms.py.",
        "// ignore_for_file: lines_longer_than_80_chars",
        "",
        "/// Iparág-/szektornevek nyelvenként; kulcs: az angol név kisbetűsen.",
        "const Map<String, Map<String, String>> kIndustryNames = {",
    ]
    data = {}
    for f in files:
        tag = os.path.basename(f)[:-5]
        d = json.load(open(f, encoding="utf-8"))
        assert set(d["industries"]) == set(en["industries"]), f"{tag}: industries keys differ"
        assert set(d["countries"]) == set(en["countries"]), f"{tag}: countries keys differ"
        data[tag] = d
    for tag, d in data.items():
        out.append(f"  {dart_str(tag)}: {{")
        for k in sorted(d["industries"]):
            out.append(f"    {dart_str(k.lower())}: {dart_str(d['industries'][k])},")
        out.append("  },")
    out.append("};")
    out.append("")
    out.append("/// Országnevek nyelvenként; kulcs: ISO 3166-1 alpha-2 kód.")
    out.append("const Map<String, Map<String, String>> kCountryNames = {")
    for tag, d in data.items():
        out.append(f"  {dart_str(tag)}: {{")
        for k in sorted(d["countries"]):
            out.append(f"    {dart_str(k)}: {dart_str(d['countries'][k])},")
        out.append("  },")
    out.append("};")
    open("lib/l10n/terms_data.dart", "w", encoding="utf-8").write("\n".join(out) + "\n")
    print(f"{len(data)} nyelv, {len(en['industries'])} iparág, {len(en['countries'])} ország")


if __name__ == "__main__":
    main()
