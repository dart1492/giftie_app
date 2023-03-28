import 'package:flutter/material.dart';
import 'package:giftie_app/shared/app_colors.dart';

class SpecialPromotionsLabelRow extends StatelessWidget {
  const SpecialPromotionsLabelRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Special Pormotions",
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Container(
          width: 10,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.plainBlack,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 10,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.plainBlack,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 10,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.plainBlack,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
