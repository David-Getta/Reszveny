/// Verziószám összehasonlítás: `1.2.3+45` → [1,2,3] és build 45.
class AppVersion implements Comparable<AppVersion> {
  const AppVersion(this.parts, {this.build = 0});

  final List<int> parts;
  final int build;

  static AppVersion? tryParse(String? s) {
    if (s == null) return null;
    final trimmed = s.trim().replaceFirst(RegExp(r'^[vV]'), '');
    if (trimmed.isEmpty) return null;
    final plus = trimmed.split('+');
    final nums = plus.first.split('.').map((x) => int.tryParse(x.replaceAll(RegExp(r'[^0-9]'), ''))).toList();
    if (nums.isEmpty || nums.any((n) => n == null)) return null;
    final build = plus.length > 1 ? int.tryParse(plus[1]) ?? 0 : 0;
    return AppVersion(nums.cast<int>(), build: build);
  }

  @override
  int compareTo(AppVersion other) {
    final n = parts.length > other.parts.length ? parts.length : other.parts.length;
    for (var i = 0; i < n; i++) {
      final a = i < parts.length ? parts[i] : 0;
      final b = i < other.parts.length ? other.parts[i] : 0;
      if (a != b) return a.compareTo(b);
    }
    return build.compareTo(other.build);
  }

  bool operator >(AppVersion other) => compareTo(other) > 0;

  @override
  String toString() => '${parts.join('.')}${build > 0 ? '+$build' : ''}';
}
