/// Zárt előzetes: csak meghívókóddal lehet használni a szervert.
///
/// Az `INVITE_CODES` környezeti változó vesszővel (vagy sortöréssel) elválasztott
/// bejegyzései: `KÓD:Név[:lejárat][:eszközök][:napi elemzés]`, pl.
/// `GABOR-7K2Q:Schulz Gábor:2026-11-30:3:10`. A lejárat (ÉÉÉÉ-HH-NN) az adott
/// nap végéig érvényes (UTC); az eszközszám alapértéke 3, a napi elemzésé 15.
/// Ha a változó üres, a szerver nyitott (mint eddig).
///
/// A kód visszavonása: törölni a változóból (a Railway-en mentés után azonnal
/// érvényes). A név az appban vízjelként látszik, így egy kiszivárgott képről
/// is kiderül, kinek a példánya volt.
class Invite {
  const Invite({
    required this.code,
    required this.label,
    this.expires,
    this.maxDevices = defaultMaxDevices,
    this.dailyAnalyses = defaultDailyAnalyses,
  });

  static const defaultMaxDevices = 3;
  static const defaultDailyAnalyses = 15;

  /// Nagybetűs, szóközök nélküli kód.
  final String code;
  final String label;

  /// Az első pillanat, amikor már nem érvényes (a megadott nap utáni éjfél, UTC).
  final DateTime? expires;
  final int maxDevices;
  final int dailyAnalyses;

  bool isExpired(DateTime now) => expires != null && !now.toUtc().isBefore(expires!);

  /// Az appnak: a vízjel neve és a lejárat napja.
  Map<String, dynamic> toJson() => {
    'label': label,
    if (expires != null) 'expires': expires!.subtract(const Duration(days: 1)).toIso8601String().substring(0, 10),
  };
}

class InviteBook {
  const InviteBook([this._invites = const {}]);

  final Map<String, Invite> _invites;

  bool get enabled => _invites.isNotEmpty;
  int get length => _invites.length;

  static String normalize(String code) => code.trim().toUpperCase();

  Invite? find(String? code) => code == null ? null : _invites[normalize(code)];

  /// A hibás bejegyzéseket kihagyja (a szerver naplójába írja őket).
  static InviteBook parse(String? raw, {void Function(String message)? onWarning}) {
    final out = <String, Invite>{};
    for (final entry in (raw ?? '').split(RegExp(r'[,\n]'))) {
      if (entry.trim().isEmpty) continue;
      final parts = entry.split(':').map((p) => p.trim()).toList();
      final code = normalize(parts[0]);
      if (code.length < 6 || code.contains(' ')) {
        onWarning?.call('Túl rövid vagy hibás meghívókód kihagyva: "${parts[0]}"');
        continue;
      }
      DateTime? expires;
      if (parts.length > 2 && parts[2].isNotEmpty) {
        final day = DateTime.tryParse(parts[2]);
        if (day == null) {
          onWarning?.call('Hibás lejárat a(z) $code kódnál: "${parts[2]}"');
          continue;
        }
        expires = DateTime.utc(day.year, day.month, day.day + 1);
      }
      out[code] = Invite(
        code: code,
        label: parts.length > 1 && parts[1].isNotEmpty ? parts[1] : code,
        expires: expires,
        maxDevices: parts.length > 3 ? int.tryParse(parts[3]) ?? Invite.defaultMaxDevices : Invite.defaultMaxDevices,
        dailyAnalyses: parts.length > 4
            ? int.tryParse(parts[4]) ?? Invite.defaultDailyAnalyses
            : Invite.defaultDailyAnalyses,
      );
    }
    return InviteBook(out);
  }
}
