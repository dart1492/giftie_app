import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:giftie_app/routes/router.gr.dart' as gr;
import 'package:giftie_app/shared/app_colors.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';

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
      backgroundColor: colors.primary,
      splashColor: AppColors.opaqueGrey,
      onPressed: () {
        AutoRouter.of(context).push(const gr.Checkout());
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
