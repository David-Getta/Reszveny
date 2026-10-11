import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import '../core/desktop/desktop_integration.dart';

/// Rejtett natív címsor mellett az app saját fejlécével mozgatható az ablak.
/// Ez a widget bármit húzható területté tesz (AppBar `flexibleSpace`-ként is).
class WindowDragArea extends StatelessWidget {
  const WindowDragArea({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final c = child ?? const SizedBox.expand();
    if (!DesktopIntegration.isSupported) return c;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onPanStart: (_) => windowManager.startDragging(),
      child: c,
    );
  }
}

/// Hely a macOS ablakvezérlő gomboknak, ha nincs oldalsáv, ami eltakarná őket.
double macTrafficLightInset(BuildContext context, {required bool hasSidebar}) {
  if (kIsWeb || !Platform.isMacOS || hasSidebar) return 0;
  return 72;
}

/// AppBar, ami asztali gépen húzható, és macOS-en helyet hagy a lámpáknak.
PreferredSizeWidget desktopAppBar(
  BuildContext context, {
  required Widget title,
  List<Widget>? actions,
  bool hasSidebar = true,
  Widget? leading,
}) {
  final inset = macTrafficLightInset(context, hasSidebar: hasSidebar);
  return AppBar(
    title: title,
    actions: actions,
    leading: leading,
    leadingWidth: leading == null ? null : 56 + inset,
    titleSpacing: leading == null ? 16 + inset : null,
    flexibleSpace: const WindowDragArea(),
  );
}
