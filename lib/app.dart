import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:giftie_app/models/shopping_cart.dart';
import 'package:giftie_app/shared/app_colors.dart';
import 'package:giftie_app/views/root/root.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShoppingCart(),
      child: MaterialApp(
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
      ),
    );
  }
}
