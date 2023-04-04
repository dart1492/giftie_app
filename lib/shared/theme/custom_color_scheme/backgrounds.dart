// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Backgrounds {
  final Color reversed;
  final Color main;
  final Color secondary;
  final Color secondaryStrong;
  Backgrounds({
    required this.reversed,
    required this.main,
    required this.secondary,
    required this.secondaryStrong,
  });

  Backgrounds lerp(Backgrounds other, double t) {
    return Backgrounds(
      reversed: Color.lerp(reversed, other.reversed, t) ?? reversed,
      main: Color.lerp(main, other.main, t) ?? main,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      secondaryStrong: Color.lerp(secondaryStrong, other.secondaryStrong, t) ??
          secondaryStrong,
    );
  }
}
