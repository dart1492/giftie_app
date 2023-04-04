// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Accents {
  final Accent yellow;
  final Accent red;
  final Accent orange;
  final Accent green;
  final Accent blue;
  final Accent indigo;
  final Accent pink;
  Accents({
    required this.yellow,
    required this.red,
    required this.orange,
    required this.green,
    required this.blue,
    required this.indigo,
    required this.pink,
  });

  Accents lerp(Accents other, double t) {
    return Accents(
      yellow: yellow.lerp(other.yellow, t),
      red: red.lerp(other.red, t),
      orange: orange.lerp(other.orange, t),
      green: green.lerp(other.green, t),
      blue: blue.lerp(other.blue, t),
      indigo: indigo.lerp(other.indigo, t),
      pink: pink.lerp(other.pink, t),
    );
  }
}

class Accent {
  final Color standard;

  final Color accessible;

  Accent(this.accessible, this.standard);

  Accent lerp(Accent other, double t) {
    return Accent(
      Color.lerp(accessible, other.accessible, t) ?? accessible,
      Color.lerp(accessible, other.accessible, t) ?? standard,
    );
  }
}
