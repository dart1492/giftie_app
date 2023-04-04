import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giftie_app/models/gift_card.dart';
import 'package:giftie_app/shared/app_colors.dart';
import 'package:giftie_app/views/home/components/bestsellers_label_row.dart';
import 'package:giftie_app/views/home/components/special_promotion_card.dart';
import 'package:giftie_app/views/home/components/special_promotions_label_row.dart';
import 'package:giftie_app/views/home/components/gift_card_preview.dart';
import 'package:giftie_app/views/home/components/search_field.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  List<GiftCard> generateCards() {
    List<GiftCard> giftCards = [];
    giftCards.add(
      GiftCard(
        name: "Netflix",
        assetImagePath: 'assets/netflix_logo.png',
        priceList: [25, 50, 100],
        description:
            "Netflix gift card can be redeemed for a prepaid subscription to a library of movies and shows. All streamable ad-free and to any device with the Netflix app",
        availableColors: [
          AppColors.lightRed,
          AppColors.plainWhite,
          AppColors.lightBlue
        ],
      ),
    );

    giftCards.add(
      GiftCard(
        description: "Sony PlayStation gift card",
        name: "PlayStation",
        assetImagePath: 'assets/ps_logo.png',
        priceList: [25, 50, 250],
        availableColors: [
          AppColors.lightRed,
          AppColors.plainWhite,
          AppColors.lightBlue
        ],
      ),
    );
    giftCards.add(
      GiftCard(
        description: "Telegram premium gift card",
        name: "Telegram",
        assetImagePath: 'assets/telegram_logo.png',
        priceList: [15, 80, 170],
        availableColors: [
          AppColors.lightRed,
          AppColors.plainWhite,
          AppColors.lightBlue
        ],
      ),
    );

    giftCards.add(
      GiftCard(
        description: "Discord nitro gift card",
        name: "Discord",
        assetImagePath: 'assets/discord_logo.png',
        priceList: [25, 50, 250],
        availableColors: [
          const Color.fromARGB(255, 132, 255, 136),
          AppColors.plainWhite,
          AppColors.lightBlue
        ],
      ),
    );

    return giftCards;
  }

  @override
  Widget build(BuildContext context) {
    final giftCards = generateCards();

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const SearchField(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SpecialPromotionsLabelRow(),
                const SpecialPromotionCard(),
                const BestsellersLabelRow(),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GiftCardPreview(
                        giftCard: giftCards.first,
                      ),
                      GiftCardPreview(
                        giftCard: giftCards[1],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GiftCardPreview(
                        giftCard: giftCards[2],
                      ),
                      GiftCardPreview(
                        giftCard: giftCards[3],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
