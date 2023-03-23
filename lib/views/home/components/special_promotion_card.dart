import 'package:flutter/material.dart';
import 'package:task_4/shared/app_colors.dart';

class SpecialPromotionCard extends StatelessWidget {
  const SpecialPromotionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(offset: Offset(4, 4))],
        color: AppColors.plainWhite,
        border: Border.all(color: AppColors.plainBlack, width: 2),
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
