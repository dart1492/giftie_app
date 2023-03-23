import 'package:flutter/material.dart';
import 'package:task_4/models/gift_card_order.dart';
import 'package:task_4/shared/app_colors.dart';
import 'package:task_4/views/checkout/components/done_button.dart';
import 'package:task_4/views/checkout/components/order_list.dart';

class Checkout extends StatelessWidget {
  final List<GiftCardOrder> checkoutCart;
  final Function(int index) deleteItem;
  const Checkout({
    super.key,
    required this.checkoutCart,
    required this.deleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Checkout",
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [
          Hero(
            tag: "checkout-tag",
            child: Container(
                padding: const EdgeInsets.only(right: 15),
                child: const Icon(Icons.shopping_cart)),
          ),
        ],
      ),
      backgroundColor: AppColors.lightWhiteGreen,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Expanded(
                child: OrderList(
                  deleteItem: deleteItem,
                  checkoutCart: checkoutCart,
                ),
              ),
              const DoneButton(),
            ],
          ),
        ),
      ),
    );
  }
}
