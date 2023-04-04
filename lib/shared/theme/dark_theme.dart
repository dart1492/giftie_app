import 'package:flutter/material.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';

final darkTheme = ThemeData(
  fontFamily: "Inter",
  extensions: <ThemeExtension<dynamic>>[
    AppColorScheme(
      background: const Color(0xFF252525),
      textMain: const Color(0xFFFFFFFF),
      textSecondary: const Color(0xFFB3B3B3),
      primary: const Color(0xFFFFFFFF),
      secondary: const Color(0xFF6A36FF),
      textReversed: const Color(0xFF252525),
    )
  ],
);
