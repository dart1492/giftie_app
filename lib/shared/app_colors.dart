import 'package:flutter/material.dart';

class AppColors {
  static const Color lightWhiteGreen = Color.fromARGB(255, 210, 239, 231);

  static const Color plainBlack = Color(0xFF353535);

  static const Color plainWhite = Color(0xFFF6F6F6);

  static const Color plainGrey = Color(0xFF6D7271);

  static const Color lightRed = Color(0xFFE55A4E);

  static const Color lightBlue = Color(0xFFB0C5FB);

  static const Color lightGreen = Color(0xFFB7E6C2);

  static const Color opaqueGrey = Color.fromARGB(69, 109, 114, 113);

  static const Gradient greenBlueGradient = LinearGradient(
    colors: [AppColors.lightGreen, AppColors.lightBlue],
  );
}
