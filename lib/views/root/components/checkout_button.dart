import 'package:flutter/material.dart';
import 'package:giftie_app/shared/app_colors.dart';
import 'package:giftie_app/views/checkout/checkout.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      heroTag: "checkout-tag",
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      extendedPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      backgroundColor: AppColors.plainWhite,
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
          const Icon(
            Icons.shopping_cart,
            color: AppColors.plainBlack,
          ),
          Text("Checkout", style: Theme.of(context).textTheme.titleMedium)
        ],
      ),
    );
  }
}
