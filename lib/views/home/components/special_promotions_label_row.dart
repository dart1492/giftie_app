import 'package:flutter/material.dart';
import 'package:giftie_app/shared/app_colors.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';

class SpecialPromotionsLabelRow extends StatelessWidget {
  const SpecialPromotionsLabelRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorScheme>()!;

    return Row(
      children: [
        Text(
          "Special Pormotions",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: colors.textMain,
              ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Container(
          width: 10,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: colors.textMain,
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
