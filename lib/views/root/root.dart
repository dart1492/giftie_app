import 'package:flutter/material.dart';
import 'package:task_4/shared/app_colors.dart';
import 'package:task_4/views/home/home.dart';
import 'package:task_4/views/root/components/checkout_button.dart';
import 'package:task_4/views/root/components/navigation_drawer_content.dart';
import 'package:task_4/views/settings/settings.dart';

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
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CheckoutButton(),
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.lightWhiteGreen,
      drawer: const Drawer(
        child: NavigationDrawerContent(),
      ),
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(Icons.shopping_bag_outlined),
          )
        ],
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.plainBlack,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedNavBarIndex = value;
          });

          tabController.animateTo(value);
        },
        currentIndex: selectedNavBarIndex,
        backgroundColor: AppColors.plainWhite,
        elevation: 0,
        iconSize: 25,
        selectedItemColor: AppColors.plainBlack,
        selectedLabelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold, color: AppColors.plainBlack),
        unselectedLabelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.plainBlack,
            ),
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: const [Home(), Settings()],
      ),
    );
  }
}
