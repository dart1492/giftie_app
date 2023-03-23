import 'dart:math';
import 'package:flutter/material.dart';
import 'package:task_4/models/gift_card.dart';
import 'package:task_4/models/gift_card_order.dart';
import 'package:task_4/shared/app_colors.dart';
import 'package:task_4/views/full_gift_card/full_gift_card.dart';

class GiftCardPreview extends StatelessWidget {
  final GiftCard giftCard;
  final Function(GiftCardOrder item) addItem;

  const GiftCardPreview({
    super.key,
    required this.giftCard,
    required this.addItem,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullGiftCard(
              giftCard: giftCard,
              addItem: addItem,
            ),
          ),
        );
      },
      child: Container(
        height: 200,
        width: 175,
        decoration: BoxDecoration(
          color: AppColors.plainWhite,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: AppColors.plainBlack,
          ),
        ),
        child: Column(children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Hero(
                  tag: giftCard.assetImagePath,
                  child: Image.asset(
                    giftCard.assetImagePath,
                    height: 200,
                    width: 200,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(top: BorderSide(color: AppColors.plainBlack)),
                  gradient: AppColors.greenBlueGradient),
              child: Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(color: AppColors.plainBlack),
                      ),
                    ),
                    child: Text(
                      giftCard.name,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "${giftCard.priceList.reduce(min)}-${giftCard.priceList.reduce(max)}",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
