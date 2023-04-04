import 'package:flutter/material.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';

class ChooseDesignLabel extends StatelessWidget {
  const ChooseDesignLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorScheme>()!;

    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        "Choose a design",
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 20,
              color: colors.textMain,
            ),
      ),
    );
  }
}
