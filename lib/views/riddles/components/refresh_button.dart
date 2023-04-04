import 'package:flutter/material.dart';
import 'package:giftie_app/providers/riddle_section_provider.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';
import 'package:provider/provider.dart';

class RefreshButton extends StatelessWidget {
  const RefreshButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorScheme>()!;

    return InkWell(
      onTap: () {
        Provider.of<RiddleSectionProvider>(
          context,
          listen: false,
        ).getNewRiddle();
      },
      splashColor: colors.primary,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: colors.secondary,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Text(
          "Get a new one!",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: colors.textMain),
        ),
      ),
    );
  }
}
