import 'package:flutter/material.dart';
import 'package:giftie_app/shared/app_colors.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';
import 'package:giftie_app/views/checkout/checkout.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorScheme>()!;
    return FloatingActionButton.extended(
      heroTag: "checkout-tag",
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      extendedPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      backgroundColor: colors.background,
      splashColor: AppColors.opaqueGrey,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Checkout(),
          ),
        );
      },
      label: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shopping_cart,
            color: colors.textMain,
          ),
          Text(
            "Checkout",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: colors.textMain),
          )
        ],
      ),
    );
  }
}
