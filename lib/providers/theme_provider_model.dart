import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ThemeProvider extends ChangeNotifier {
  late bool isDarkTheme;

  ThemeProvider(this.isDarkTheme);

  void switchTheme() async {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
    final appBox = await Hive.openBox('app');
    appBox.put('theme', isDarkTheme);
  }
}
