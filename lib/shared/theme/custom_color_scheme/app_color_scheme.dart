// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppColorScheme extends ThemeExtension<AppColorScheme> {
  final Color background;
  final Color textMain;
  final Color textSecondary;
  final Color primary;
  final Color secondary;
  final Color textReversed;

  AppColorScheme({
    required this.background,
    required this.textMain,
    required this.textSecondary,
    required this.primary,
    required this.secondary,
    required this.textReversed,
  });

  @override
  ThemeExtension<AppColorScheme> lerp(
    covariant ThemeExtension<AppColorScheme> other,
    double t,
  ) {
    return AppColorScheme(
      background: Color.lerp(
        background,
        (other as AppColorScheme).background,
        t,
      )!,
      textMain: Color.lerp(
        textMain,
        (other).textMain,
        t,
      )!,
      textSecondary: Color.lerp(
        textSecondary,
        (other).textSecondary,
        t,
      )!,
      primary: Color.lerp(
        primary,
        (other).primary,
        t,
      )!,
      secondary: Color.lerp(
        secondary,
        (other).secondary,
        t,
      )!,
      textReversed: Color.lerp(
        textReversed,
        (other).textReversed,
        t,
      )!,
    );
  }

  @override
  AppColorScheme copyWith({
    Color? background,
    Color? textMain,
    Color? textSecondary,
    Color? primary,
    Color? secondary,
    Color? textReversed,
  }) {
    return AppColorScheme(
      background: background ?? this.background,
      textMain: textMain ?? this.textMain,
      textSecondary: textSecondary ?? this.textSecondary,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      textReversed: textReversed ?? this.textReversed,
    );
  }
}
