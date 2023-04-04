import 'package:flutter/material.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';

final lightTheme = ThemeData(
  fontFamily: "Inter",
  extensions: <ThemeExtension<dynamic>>[
    AppColorScheme(
      background: const Color.fromARGB(255, 210, 239, 231),
      textMain: const Color(0xFF353535),
      textSecondary: const Color(0xFF6D7271),
      primary: const Color(0xFFFFFFFF),
      secondary: const Color(0xFF000000),
      textReversed: const Color(0xFF000000),
    )
  ],
);
