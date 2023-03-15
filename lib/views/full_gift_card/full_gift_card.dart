import 'package:flutter/material.dart';
import 'package:task_4/models/gift_card.dart';
import 'package:task_4/shared/app_colors.dart';
import 'package:task_4/views/full_gift_card/components/choose_amount_label.dart';
import 'package:task_4/views/full_gift_card/components/choose_design_label.dart';
import 'package:task_4/views/full_gift_card/components/colors_row.dart';
import 'package:task_4/views/full_gift_card/components/description_text.dart';
import 'package:task_4/views/full_gift_card/components/logo_image.dart';
import 'package:task_4/views/full_gift_card/components/prices_row.dart';
import 'package:task_4/views/full_gift_card/components/select_card_button.dart';
import 'package:task_4/views/full_gift_card/components/title_text.dart';

class FullGiftCard extends StatelessWidget {
  final GiftCard giftCard;
  const FullGiftCard({super.key, required this.giftCard});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightWhiteGreen,
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TitleText(),
              LogoImage(
                logoImagePath: giftCard.assetImagePath,
              ),
              DescriptionText(
                providerName: giftCard.name,
                giftCardDescription: giftCard.description,
              ),
              const ChooseAmountLabel(),
              PricesRow(
                prices: giftCard.priceList,
              ),
              const ChooseDesignLabel(),
              const ColorsRow(),
              const SelectCardButton(),
            ],
          ),
        ),
      ),
    );
  }
}
