import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:giftie_app/models/gift_card.dart';
import 'package:giftie_app/models/gift_card_order.dart';
import 'package:giftie_app/models/shopping_cart.dart';
import 'package:giftie_app/shared/app_colors.dart';

class SelectCardButton extends StatelessWidget {
  final GiftCard giftCard;
  const SelectCardButton({
    super.key,
    required this.giftCard,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final order = Provider.of<GiftCardOrder>(context, listen: false);
        if (order.amount == null || order.color == null) {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              title: Text("Warning"),
              content: Text("Choose color and amount"),
            ),
          );
        } else {
          Provider.of<ShoppingCart>(context, listen: false).addOrder(order);
          Navigator.pop(context);
        }
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [AppColors.lightGreen, AppColors.lightBlue],
          ),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: Colors.black,
          ),
          color: AppColors.plainWhite,
        ),
        child: Row(children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.plainWhite,
                ),
                alignment: Alignment.center,
                child:
                    Consumer<GiftCardOrder>(builder: (context, value, child) {
                  String amount = value.amount?.toString() ?? '';
                  return Text(
                    "\$$amount",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  );
                }),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: AppColors.plainBlack,
                    width: 2,
                  ),
                ),
              ),
              child: Text(
                "Select card",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
