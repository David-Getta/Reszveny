import 'package:flutter/material.dart';

/// Meleg, sötét tónusú paletta a Claude alkalmazás stílusában, Apple-szerű
/// részletekkel (rendszerbetű, finom 1 px-es szegélyek, nagy lekerekítés).
class AppPalette extends ThemeExtension<AppPalette> {
  const AppPalette({
    required this.background,
    required this.sidebar,
    required this.surface,
    required this.surfaceRaised,
    required this.border,
    required this.text,
    required this.muted,
    required this.accent,
    required this.accentHover,
    required this.positive,
    required this.negative,
  });

  final Color background;
  final Color sidebar;
  final Color surface;
  final Color surfaceRaised;
  final Color border;
  final Color text;
  final Color muted;
  final Color accent;
  final Color accentHover;
  final Color positive;
  final Color negative;

  static const dark = AppPalette(
    background: Color(0xFF1F1E1D),
    sidebar: Color(0xFF191917),
    surface: Color(0xFF2B2A28),
    surfaceRaised: Color(0xFF33322F),
    border: Color(0xFF3B3A37),
    text: Color(0xFFF0EEE6),
    muted: Color(0xFFA19E97),
    accent: Color(0xFFD97757),
    accentHover: Color(0xFFE38A6C),
    positive: Color(0xFF5BB381),
    negative: Color(0xFFE5614F),
  );

  static const light = AppPalette(
    background: Color(0xFFF5F4EF),
    sidebar: Color(0xFFECEAE3),
    surface: Color(0xFFFFFFFF),
    surfaceRaised: Color(0xFFFAF9F6),
    border: Color(0xFFE1DFD7),
    text: Color(0xFF1F1E1D),
    muted: Color(0xFF6E6B65),
    accent: Color(0xFFC96442),
    accentHover: Color(0xFFB85735),
    positive: Color(0xFF2E8B57),
    negative: Color(0xFFC63F31),
  );

  static AppPalette of(BuildContext context) => Theme.of(context).extension<AppPalette>()!;

  @override
  AppPalette copyWith() => this;

  @override
  AppPalette lerp(ThemeExtension<AppPalette>? other, double t) {
    if (other is! AppPalette) return this;
    Color l(Color a, Color b) => Color.lerp(a, b, t)!;
    return AppPalette(
      background: l(background, other.background),
      sidebar: l(sidebar, other.sidebar),
      surface: l(surface, other.surface),
      surfaceRaised: l(surfaceRaised, other.surfaceRaised),
      border: l(border, other.border),
      text: l(text, other.text),
      muted: l(muted, other.muted),
      accent: l(accent, other.accent),
      accentHover: l(accentHover, other.accentHover),
      positive: l(positive, other.positive),
      negative: l(negative, other.negative),
    );
  }
}

class AppTheme {
  AppTheme._();

  /// A nagy üdvözlő szöveg betűje: szerif, mint a Claude fejlécei.
  static const List<String> serifFallback = ['Georgia', 'Times New Roman', 'Noto Serif', 'serif'];

  static const double radius = 16;

  static ThemeData build(Brightness brightness) {
    final p = brightness == Brightness.dark ? AppPalette.dark : AppPalette.light;
    final scheme = ColorScheme(
      brightness: brightness,
      primary: p.accent,
      onPrimary: Colors.white,
      secondary: p.accent,
      onSecondary: Colors.white,
      error: p.negative,
      onError: Colors.white,
      surface: p.surface,
      onSurface: p.text,
      onSurfaceVariant: p.muted,
      outline: p.border,
      outlineVariant: p.border,
      surfaceContainerLowest: p.background,
      surfaceContainerLow: p.background,
      surfaceContainer: p.surface,
      surfaceContainerHigh: p.surfaceRaised,
      surfaceContainerHighest: p.surfaceRaised,
      inverseSurface: p.text,
      onInverseSurface: p.background,
      tertiaryContainer: p.surfaceRaised,
      onTertiaryContainer: p.text,
      primaryContainer: p.accent.withValues(alpha: 0.18),
      onPrimaryContainer: p.text,
    );
    final base = ThemeData(colorScheme: scheme, useMaterial3: true, brightness: brightness);
    final text = base.textTheme.apply(bodyColor: p.text, displayColor: p.text);
    final rounded = RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius));
    return base.copyWith(
      scaffoldBackgroundColor: p.background,
      canvasColor: p.background,
      splashFactory: InkSparkle.splashFactory,
      extensions: [p],
      textTheme: text.copyWith(
        headlineMedium: text.headlineMedium?.copyWith(fontWeight: FontWeight.w500, letterSpacing: -0.5),
        headlineSmall: text.headlineSmall?.copyWith(fontWeight: FontWeight.w600, letterSpacing: -0.3),
        titleMedium: text.titleMedium?.copyWith(fontWeight: FontWeight.w600),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: p.background,
        foregroundColor: p.text,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: text.titleMedium?.copyWith(fontWeight: FontWeight.w600, color: p.text),
      ),
      cardTheme: CardThemeData(
        color: p.surface,
        elevation: 0,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: BorderSide(color: p.border),
        ),
      ),
      dividerTheme: DividerThemeData(color: p.border, thickness: 1, space: 1),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: p.surface,
        hintStyle: TextStyle(color: p.muted),
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: p.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: p.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: p.accent, width: 1.5),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: p.accent,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          textStyle: text.labelLarge?.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: p.text,
          side: BorderSide(color: p.border),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          textStyle: text.labelLarge?.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: p.accent)),
      iconButtonTheme: IconButtonThemeData(style: IconButton.styleFrom(foregroundColor: p.muted)),
      listTileTheme: ListTileThemeData(
        iconColor: p.muted,
        textColor: p.text,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      dialogTheme: DialogThemeData(backgroundColor: p.surface, shape: rounded),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: p.surface,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: p.surfaceRaised,
        contentTextStyle: TextStyle(color: p.text),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(color: p.accent),
      radioTheme: RadioThemeData(fillColor: WidgetStatePropertyAll(p.accent)),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: SegmentedButton.styleFrom(
          selectedBackgroundColor: p.accent.withValues(alpha: 0.2),
          selectedForegroundColor: p.text,
          foregroundColor: p.muted,
          side: BorderSide(color: p.border),
        ),
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(color: p.surfaceRaised, borderRadius: BorderRadius.circular(8)),
        textStyle: TextStyle(color: p.text),
      ),
    );
  }
}
