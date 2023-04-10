import 'package:flutter/material.dart';
import 'package:giftie_app/providers/theme_provider_model.dart';
import 'package:giftie_app/routes/router.dart';
import 'package:giftie_app/shared/theme/light_theme.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:giftie_app/providers/shopping_cart.dart';

import 'shared/theme/dark_theme.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShoppingCart(),
      child: FutureBuilder(
        future: Hive.openBox('app'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ChangeNotifierProvider(
              create: (context) =>
                  ThemeProvider(snapshot.data!.get('theme') ?? false),
              child: Consumer<ThemeProvider>(
                builder: (context, value, child) {
                  return MaterialApp.router(
                    routerConfig: _appRouter.config(),
                    theme: !value.isDarkTheme ? darkTheme : lightTheme,
                  );
                },
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
