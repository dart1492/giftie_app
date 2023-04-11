import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';
import 'package:giftie_app/views/checkout/components/done_button.dart';
import 'package:giftie_app/views/checkout/components/order_list.dart';

@RoutePage(name: 'checkout')
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorScheme>()!;

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: colors.textMain,
        title: Text(
          "Checkout",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: colors.textMain,
              ),
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
      backgroundColor: colors.background,
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
