import 'package:flutter/material.dart';

import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';

/// Az első indításkor egyszer: három rövid oldal arról, mire jó az app
/// (lefotózott részvény → adatok, AI-elemzés forgatókönyvekkel, kedvencek,
/// portfólió és riasztások). Átugorható; a végén a keresőhöz visz.
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key, required this.onDone});

  final VoidCallback onDone;

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _pages = PageController();
  int _index = 0;

  @override
  void dispose() {
    _pages.dispose();
    super.dispose();
  }

  void _next() {
    if (_index == 2) {
      widget.onDone();
      return;
    }
    _pages.nextPage(duration: const Duration(milliseconds: 280), curve: Curves.easeOutCubic);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final slides = [
      (Icons.photo_camera_rounded, l10n.onboardTitle1, l10n.onboardBody1),
      (Icons.auto_awesome_rounded, l10n.onboardTitle2, l10n.onboardBody2),
      (Icons.notifications_active_rounded, l10n.onboardTitle3, l10n.onboardBody3),
    ];
    return Scaffold(
      key: const ValueKey('onboarding'),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextButton(
                      key: const ValueKey('onboarding-skip'),
                      onPressed: widget.onDone,
                      child: Text(l10n.onboardSkip),
                    ),
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: _pages,
                    onPageChanged: (i) => setState(() => _index = i),
                    children: [for (final (icon, title, body) in slides) _Slide(icon: icon, title: title, body: body)],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < slides.length; i++)
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: i == _index ? 22 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: i == _index ? p.accent : p.border,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
                  child: SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      key: const ValueKey('onboarding-next'),
                      onPressed: _next,
                      style: FilledButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 14)),
                      child: Text(_index == 2 ? l10n.onboardStart : l10n.onboardNext),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  const _Slide({required this.icon, required this.title, required this.body});

  final IconData icon;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    // Függőlegesen középen; kis képernyőn (vagy nagy betűnél) görgethető.
    return LayoutBuilder(
      builder: (context, c) => SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: c.maxHeight - 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 132,
                height: 132,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [p.accent.withValues(alpha: 0.30), p.accent.withValues(alpha: 0.05)],
                  ),
                ),
                child: Icon(icon, size: 60, color: p.accent),
              ),
              const SizedBox(height: 36),
              Text(
                title,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 14),
              Text(
                body,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge?.copyWith(color: p.muted, height: 1.45),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
