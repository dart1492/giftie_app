import 'package:flutter/material.dart';
import 'package:giftie_app/app.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const App());
}
