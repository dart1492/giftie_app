import 'package:flutter/material.dart';
import 'package:giftie_app/shared/app_colors.dart';

class NavDrawerCustomItem extends StatelessWidget {
  final Widget trailing;

  final Widget title;

  final Function()? onTap;

  const NavDrawerCustomItem({
    super.key,
    required this.title,
    required this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: AppColors.greenBlueGradient,
          borderRadius: BorderRadius.circular(15),
          // border: Border.all(color: AppColors.plainBlack),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(children: [
          title,
          const Expanded(
            child: SizedBox(),
          ),
          trailing,
        ]),
      ),
    );
  }
}
