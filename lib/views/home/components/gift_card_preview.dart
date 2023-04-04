import 'dart:math';
import 'package:flutter/material.dart';
import 'package:giftie_app/models/gift_card.dart';
import 'package:giftie_app/shared/app_colors.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';
import 'package:giftie_app/views/full_gift_card/full_gift_card.dart';

class GiftCardPreview extends StatelessWidget {
  final GiftCard giftCard;

  const GiftCardPreview({
    super.key,
    required this.giftCard,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorScheme>()!;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullGiftCard(
              giftCard: giftCard,
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
            color: colors.secondary,
            width: 1.5,
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
