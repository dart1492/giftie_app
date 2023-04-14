import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:giftie_app/providers/theme_provider_model.dart';
import 'package:giftie_app/routes/router.gr.dart' as gr;
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';
import 'package:giftie_app/views/home/home_screen.dart';
import 'package:giftie_app/views/root/components/checkout_button.dart';
import 'package:giftie_app/views/riddles/riddles_screen.dart';
import 'package:provider/provider.dart';

@RoutePage()
class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorScheme>()!;
    return AutoTabsScaffold(
      routes: const [
        gr.Home(),
        gr.Riddles(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          backgroundColor: colors.primary,
          elevation: 0,
          iconSize: 25,
          selectedItemColor: colors.textMain,
          selectedLabelStyle: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold, color: colors.textMain),
          unselectedLabelStyle:
              Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colors.textMain,
                  ),
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Riddle',
              icon: Icon(Icons.question_mark),
            ),
          ],
        );
      },
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CheckoutButton(),
      resizeToAvoidBottomInset: false,
      backgroundColor: colors.background,
      appBarBuilder: (context, tabsRouter) => AppBar(
        leading: Consumer<ThemeProvider>(
          builder: (context, value, child) {
            return IconButton(
              icon: Icon(
                value.isDarkTheme ? Icons.sunny : Icons.nightlight,
              ),
              onPressed: () {
                value.switchTheme();
              },
            );
          },
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(Icons.shopping_bag_outlined),
          )
        ],
        backgroundColor: Colors.transparent,
        foregroundColor: colors.textMain,
        elevation: 0,
      ),
    );
  }
}



  
// final colors = Theme.of(context).extension<AppColorScheme>()!;

// return Scaffold(
//   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//   floatingActionButton: const CheckoutButton(),
//   resizeToAvoidBottomInset: false,
//   backgroundColor: colors.background,
//   appBar: AppBar(
//     leading: Consumer<ThemeProvider>(
//       builder: (context, value, child) {
//         return IconButton(
//           icon: Icon(
//             value.isDarkTheme ? Icons.sunny : Icons.nightlight,
//           ),
//           onPressed: () {
//             value.switchTheme();
//           },
//         );
//       },
//     ),
//     actions: [
//       Container(
//         margin: const EdgeInsets.only(right: 15),
//         child: const Icon(Icons.shopping_bag_outlined),
//       )
//     ],
//     backgroundColor: Colors.transparent,
//     foregroundColor: colors.textMain,
//     elevation: 0,
//   ),
//   bottomNavigationBar: BottomNavigationBar(
//     onTap: (value) {
//       tabController.animateTo(value);
//       setState(() {
//         selectedNavBarIndex = value;
//       });
//     },
//     currentIndex: selectedNavBarIndex,
//     backgroundColor: colors.background,
//     elevation: 0,
//     iconSize: 25,
//     selectedItemColor: colors.textMain,
//     selectedLabelStyle: Theme.of(context)
//         .textTheme
//         .titleMedium
//         ?.copyWith(fontWeight: FontWeight.bold, color: colors.textMain),
//     unselectedLabelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
//           fontWeight: FontWeight.bold,
//           color: colors.textMain,
//         ),
//     items: const [
//       BottomNavigationBarItem(
//         label: "Home",
//         icon: Icon(Icons.home_outlined),
//       ),
//       BottomNavigationBarItem(
//         label: "Riddles",
//         icon: Icon(Icons.question_mark),
//       )
//     ],
//   ),
//   body: TabBarView(children: [],)
// );
