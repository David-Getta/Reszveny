#!/usr/bin/env python3
"""StockLens logó – saját, programból rajzolt jel.

A jel: fényképező-kereső sarkai (a „fotózd le” mozdulat) és benne három
emelkedő gyertya (árfolyam). Szándékosan nincs benne megtört gyűrű vagy a
körből kitörő nyíl, hogy ne hasonlítson más márkák logójára.

Futtatás a repó gyökeréből:
    python3 tool/make_logo.py            # az app összes logó-fájlja
    python3 tool/make_logo.py --sheet F  # változatok összevetése egy képen
Utána: dart run flutter_launcher_icons
"""
import argparse
import glob
import os

from PIL import Image, ImageDraw, ImageFont

DARK = (31, 30, 29, 255)        # #1F1E1D – az app háttere
CREAM = (240, 238, 230, 255)    # #F0EEE6
ACCENT = (217, 119, 87, 255)    # #D97757
SS = 4                          # túlmintavételezés az élsimításhoz


def _font(size):
    for p in glob.glob('/opt/flutter/bin/cache/**/Roboto-Bold.ttf', recursive=True) + [
        '/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf'
    ]:
        if os.path.exists(p):
            return ImageFont.truetype(p, size)
    return ImageFont.load_default()


def _line(d, pts, w, color):
    d.line(pts, fill=color, width=w, joint='curve')
    r = w / 2
    for x, y in (pts[0], pts[-1]):
        d.ellipse((x - r, y - r, x + r, y + r), fill=color)


def _candles(d, cx, cy, s, color):
    """Három emelkedő gyertya; s = a jel mérete pixelben."""
    bw = s * 0.115           # testszélesség
    gap = s * 0.07
    wick = max(2, int(s * 0.03))
    xs = [cx - bw - gap - bw / 2, cx - bw / 2, cx + bw / 2 + gap]
    bodies = [(0.10, 0.30), (-0.05, 0.20), (-0.24, 0.06)]   # (teteje, alja) cy-hoz képest, s arányában
    wicks = [(0.03, 0.36), (-0.13, 0.27), (-0.32, 0.12)]
    for x, (t, b), (wt, wb) in zip(xs, bodies, wicks):
        mx = x + bw / 2
        d.rounded_rectangle((mx - wick / 2, cy + wt * s, mx + wick / 2, cy + wb * s), radius=wick / 2, fill=color)
        d.rounded_rectangle((x, cy + t * s, x + bw, cy + b * s), radius=bw * 0.22, fill=color)


def glyph_viewfinder(size, frame=CREAM, accent=ACCENT):
    """B: kereső-sarkok + emelkedő gyertyák (ajánlott)."""
    S = size * SS
    im = Image.new('RGBA', (S, S), (0, 0, 0, 0))
    d = ImageDraw.Draw(im)
    w = int(S * 0.075)
    m = S * 0.08 + w / 2
    L = S * 0.26
    for sx, sy in ((0, 0), (1, 0), (0, 1), (1, 1)):
        x0 = m if sx == 0 else S - m
        y0 = m if sy == 0 else S - m
        dx = L if sx == 0 else -L
        dy = L if sy == 0 else -L
        _line(d, [(x0 + dx, y0), (x0, y0), (x0, y0 + dy)], w, frame)
    _candles(d, S / 2, S / 2, S, accent)
    return im.resize((size, size), Image.LANCZOS)


def glyph_lens(size, frame=CREAM, accent=ACCENT):
    """A: zárt lencse-gyűrű, benne gyertyák és fényfolt."""
    S = size * SS
    im = Image.new('RGBA', (S, S), (0, 0, 0, 0))
    d = ImageDraw.Draw(im)
    w = int(S * 0.08)
    m = S * 0.07 + w / 2
    d.ellipse((m, m, S - m, S - m), outline=frame, width=w)
    g = S * 0.22
    d.arc((g, g, S - g, S - g), 200, 245, fill=frame, width=int(w * 0.45))
    _candles(d, S / 2 + S * 0.01, S / 2 + S * 0.01, S * 0.74, accent)
    return im.resize((size, size), Image.LANCZOS)


def glyph_magnifier(size, frame=CREAM, accent=ACCENT):
    """C: nagyító, benne gyertyák."""
    S = size * SS
    im = Image.new('RGBA', (S, S), (0, 0, 0, 0))
    d = ImageDraw.Draw(im)
    w = int(S * 0.08)
    c, r = S * 0.42, S * 0.32
    d.ellipse((c - r, c - r, c + r, c + r), outline=frame, width=w)
    k = 0.7071
    _line(d, [(c + r * k + w * 0.2, c + r * k + w * 0.2), (S * 0.9, S * 0.9)], int(w * 1.3), frame)
    _candles(d, c, c + S * 0.02, S * 0.78, accent)
    return im.resize((size, size), Image.LANCZOS)


GLYPHS = {'viewfinder': glyph_viewfinder, 'lens': glyph_lens, 'magnifier': glyph_magnifier}


def app_icon(glyph, size=1024, rounded=True):
    S = size * SS
    bg = Image.new('RGBA', (S, S), (0, 0, 0, 0))
    d = ImageDraw.Draw(bg)
    if rounded:
        d.rounded_rectangle((0, 0, S - 1, S - 1), radius=int(S * 0.225), fill=DARK)
    else:
        d.rectangle((0, 0, S, S), fill=DARK)
    bg = bg.resize((size, size), Image.LANCZOS)
    g = glyph(int(size * 0.62))
    off = (size - g.width) // 2
    bg.alpha_composite(g, (off, off))
    return bg


def wordmark(glyph, text_color, height=160):
    font = _font(int(height * 0.62))
    g = glyph(height, frame=text_color)
    tw = int(font.getlength('StockLens'))
    im = Image.new('RGBA', (height + int(height * 0.25) + tw + 8, height), (0, 0, 0, 0))
    im.alpha_composite(g, (0, 0))
    d = ImageDraw.Draw(im)
    d.text((height + int(height * 0.25), height / 2), 'StockLens', font=font, fill=text_color, anchor='lm')
    return im


def tray_template(glyph, size):
    """macOS menüsor: fekete, átlátszó hátterű sablon (a rendszer színezi)."""
    g = glyph(size, frame=(0, 0, 0, 255), accent=(0, 0, 0, 255))
    return g


def build(name):
    glyph = GLYPHS[name]
    b = 'assets/branding'
    app_icon(glyph, 1024).save(f'{b}/app_icon.png')
    app_icon(glyph, 256).save(f'{b}/app_icon_256.png')
    app_icon(glyph, 1024, rounded=False).convert('RGB').save(f'{b}/app_icon_ios.png')
    for s in (64, 128, 256):
        glyph(s, frame=ACCENT).save(f'{b}/logo_{s}.png')
    wordmark(glyph, CREAM).save(f'{b}/wordmark_dark.png')
    wordmark(glyph, DARK).save(f'{b}/wordmark_light.png')
    tray_template(glyph, 44).save('assets/icons/tray_icon_template.png')
    tray_template(glyph, 22).save('assets/icons/tray_icon_template_1x.png')
    app_icon(glyph, 64).save('assets/icons/tray_icon_windows.png')
    print(f'kész: {name}')


def sheet(path):
    tiles = []
    for name, glyph in GLYPHS.items():
        col = Image.new('RGBA', (300, 560), (24, 23, 22, 255))
        col.alpha_composite(app_icon(glyph, 256), (22, 16))
        light = Image.new('RGBA', (256, 120), (250, 249, 245, 255))
        light.alpha_composite(glyph(96, frame=ACCENT), (80, 12))
        col.alpha_composite(light, (22, 290))
        col.alpha_composite(app_icon(glyph, 64), (22, 430))
        col.alpha_composite(app_icon(glyph, 32), (100, 446))
        d = ImageDraw.Draw(col)
        d.text((150, 530), name, font=_font(24), fill=CREAM, anchor='mm')
        tiles.append(col)
    out = Image.new('RGBA', (300 * len(tiles), 560), (24, 23, 22, 255))
    for i, t in enumerate(tiles):
        out.alpha_composite(t, (i * 300, 0))
    out.save(path)


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('--sheet')
    ap.add_argument('--variant', default='viewfinder', choices=list(GLYPHS))
    a = ap.parse_args()
    if a.sheet:
        sheet(a.sheet)
    else:
        build(a.variant)
