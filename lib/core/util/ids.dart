/// Növekvő időbélyeg (µs) az azonosítókhoz: weben a `microsecondsSinceEpoch`
/// valójában ezredmásodperc pontosságú, így egy ciklusban (import, tömeges
/// riasztás) két új tétel ugyanazt kapná – ez mindig nagyobb az előzőnél.
int uniqueMicros() {
  final now = DateTime.now().microsecondsSinceEpoch;
  _last = now > _last ? now : _last + 1;
  return _last;
}

int _last = 0;
