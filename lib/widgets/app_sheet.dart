import 'package:flutter/material.dart';

/// Az app egyetlen alsó lapnyitója: a lap mindig a gyökérnavigátoron nyílik (a menüsor
/// és az oldalsáv fölött, különben azok a takarás fölött koppinthatók maradnának),
/// fogantyúval. Közvetlen `showModalBottomSheet` hívás nincs (teszt ellenőrzi).
Future<T?> showAppSheet<T>(BuildContext context, {required WidgetBuilder builder, bool isScrollControlled = true}) =>
    showModalBottomSheet<T>(
      useRootNavigator: true,
      context: context,
      showDragHandle: true,
      isScrollControlled: isScrollControlled,
      builder: builder,
    );
