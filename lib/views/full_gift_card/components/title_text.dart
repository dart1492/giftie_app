import 'package:flutter/material.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorScheme>()!;

    return Container(
      alignment: Alignment.center,
      child: Text(
        "E-gift card",
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: colors.textMain,
            ),
      ),
    );
  }
}
