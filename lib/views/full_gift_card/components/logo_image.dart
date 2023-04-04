import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:giftie_app/providers/gift_card_order.dart';
import 'package:giftie_app/shared/app_colors.dart';

class LogoImage extends StatelessWidget {
  final String logoImagePath;

  const LogoImage({
    required this.logoImagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<GiftCardOrder>(
      builder: (context, value, child) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: value.color ?? AppColors.plainWhite,
          border: Border.all(color: AppColors.plainBlack, width: 2),
        ),
        height: 200,
        child: Hero(
          tag: logoImagePath,
          child: Image.asset(logoImagePath),
        ),
      ),
    );
  }
}
