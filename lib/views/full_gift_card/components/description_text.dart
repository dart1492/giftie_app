import 'package:flutter/material.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';

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
    final colors = Theme.of(context).extension<AppColorScheme>()!;

    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "$providerName gift card",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: colors.textMain,
                ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            giftCardDescription,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 20,
                  color: colors.textSecondary,
                ),
          ),
        ),
      ],
    );
  }
}
