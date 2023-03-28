import 'package:flutter/material.dart';
import 'package:giftie_app/shared/app_colors.dart';
import 'package:giftie_app/views/checkout/components/done_button.dart';
import 'package:giftie_app/views/checkout/components/order_list.dart';

class Checkout extends StatelessWidget {
  const Checkout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
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
            children: const [
              Expanded(
                child: OrderList(),
              ),
              SizedBox(
                height: 10,
              ),
              DoneButton(),
            ],
          ),
        ),
      ),
    );
  }
}
