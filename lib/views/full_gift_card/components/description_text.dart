import 'package:flutter/material.dart';
import 'package:task_4/shared/app_colors.dart';

class DescriptionText extends StatelessWidget {
  final String providerName;

  final String giftCardDescription;

  const DescriptionText({
    required this.providerName,
    required this.giftCardDescription,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "$providerName gift card",
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            giftCardDescription,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontSize: 20, color: AppColors.plainGrey),
          ),
        ),
      ],
    );
  }
}
