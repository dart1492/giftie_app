import 'package:flutter/material.dart';
import 'package:giftie_app/shared/app_colors.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';

class SpecialPromotionCard extends StatelessWidget {
  const SpecialPromotionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorScheme>()!;
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(offset: const Offset(4, 4), color: colors.secondary)
        ],
        color: AppColors.plainWhite,
        border: Border.all(color: colors.secondary, width: 2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/new_year_image.jpeg',
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "New Year special!",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
