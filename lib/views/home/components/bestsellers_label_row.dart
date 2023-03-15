import 'package:flutter/material.dart';
import 'package:task_4/shared/app_colors.dart';

class BestsellersLabelRow extends StatelessWidget {
  const BestsellersLabelRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Text(
            "Bestsellers",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              color: AppColors.plainWhite,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppColors.plainBlack),
            ),
            child: Text(
              "View all",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
