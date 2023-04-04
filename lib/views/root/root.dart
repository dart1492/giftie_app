import 'package:flutter/material.dart';
import 'package:giftie_app/providers/theme_provider_model.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';
import 'package:giftie_app/views/home/home.dart';
import 'package:giftie_app/views/root/components/checkout_button.dart';
import 'package:giftie_app/views/riddles/riddles.dart';
import 'package:provider/provider.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedNavBarIndex = 0;

  @override
  void initState() {
    tabController = TabController(
        initialIndex: 0,
        length: 2,
        vsync: this,
        animationDuration: const Duration(milliseconds: 500));
    tabController.addListener(() {
      setState(() {
        selectedNavBarIndex = tabController.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorScheme>()!;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CheckoutButton(),
      resizeToAvoidBottomInset: false,
      backgroundColor: colors.background,
      appBar: AppBar(
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
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          tabController.animateTo(value);
          setState(() {
            selectedNavBarIndex = value;
          });
        },
        currentIndex: selectedNavBarIndex,
        backgroundColor: colors.background,
        elevation: 0,
        iconSize: 25,
        selectedItemColor: colors.textMain,
        selectedLabelStyle: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(fontWeight: FontWeight.bold, color: colors.textMain),
        unselectedLabelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: colors.textMain,
            ),
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: "Riddles",
            icon: Icon(Icons.question_mark),
          )
        ],
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [Home(), Settings()],
      ),
    );
  }
}
