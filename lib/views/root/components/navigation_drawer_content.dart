import 'package:flutter/material.dart';
import 'package:giftie_app/shared/app_colors.dart';
import 'package:giftie_app/shared/app_constants.dart';
import 'package:giftie_app/views/root/components/nav_drawer_custom_item.dart';

class NavigationDrawerContent extends StatelessWidget {
  const NavigationDrawerContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightWhiteGreen,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "What to do?",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(
              height: AppConstants.navDrawerSEparatorHeight,
            ),
            NavDrawerCustomItem(
              title: Text(
                "Home",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              trailing: const Icon(Icons.home_outlined),
            ),
            const SizedBox(
              height: AppConstants.navDrawerSEparatorHeight,
            ),
            NavDrawerCustomItem(
              title: Text(
                "Profile",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.person_2_outlined),
            ),
            const SizedBox(
              height: AppConstants.navDrawerSEparatorHeight,
            ),
            NavDrawerCustomItem(
              title: Text(
                "Friends",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.people_alt_outlined),
            ),
            const SizedBox(
              height: AppConstants.navDrawerSEparatorHeight,
            ),
            NavDrawerCustomItem(
              title: Text(
                "Log out",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
