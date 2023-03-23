import 'package:flutter/material.dart';
import 'package:task_4/models/gift_card_order.dart';
import 'package:task_4/shared/app_colors.dart';
import 'package:task_4/views/checkout/checkout.dart';

class CheckoutButton extends StatelessWidget {
  final List<GiftCardOrder> checkoutCart;
  final Function(int index) deleteItem;
  const CheckoutButton({
    super.key,
    required this.checkoutCart,
    required this.deleteItem,
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
            builder: (context) => Checkout(
              checkoutCart: checkoutCart,
              deleteItem: deleteItem,
            ),
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
