import 'package:flutter/material.dart';
import 'package:task_4/models/gift_card.dart';
import 'package:task_4/models/gift_card_order.dart';
import 'package:task_4/shared/app_colors.dart';

class SelectCardButton extends StatelessWidget {
  final Function(GiftCardOrder item) addItem;
  final GiftCard giftCard;
  const SelectCardButton({
    super.key,
    required this.addItem,
    required this.giftCard,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        addItem(
          GiftCardOrder(
            amount: 25,
            color: "Blue",
            serviceName: giftCard.name,
            imagePath: giftCard.assetImagePath,
          ),
        );

        Navigator.pop(context);
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
                child: Text(
                  "\$25",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                ),
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
