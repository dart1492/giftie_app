import 'package:flutter/material.dart';
import 'package:task_4/shared/app_colors.dart';
import 'package:task_4/views/root/root.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Root(),
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "Inter",
        listTileTheme: ListTileThemeData(
          tileColor: AppColors.lightWhiteGreen,
          iconColor: AppColors.plainBlack,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(color: AppColors.plainBlack),
          ),
        ),
      ),
    );
  }
}
