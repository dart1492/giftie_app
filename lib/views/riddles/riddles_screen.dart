import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:giftie_app/providers/riddle_section_provider.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';
import 'package:giftie_app/views/riddles/components/answer.dart';
import 'package:provider/provider.dart';

@RoutePage(name: 'riddles')
class RiddlesScreen extends StatelessWidget {
  const RiddlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorScheme>()!;

    return ChangeNotifierProvider(
      create: (context) => RiddleSectionProvider()..getNewRiddle(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                "Riddles API showcase",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: colors.textMain,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Consumer<RiddleSectionProvider>(
                builder: (context, value, child) {
                  if (value.isLoading) {
                    return CircularProgressIndicator(
                      color: colors.textSecondary,
                    );
                  } else {
                    return Column(
                      children: [
                        Text(
                          value.currentRiddle.title,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(color: colors.textMain),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          value.currentRiddle.question,
                          textAlign: TextAlign.justify,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                color: colors.textSecondary,
                              ),
                        ),
                        Answer(
                          answer: value.currentRiddle.answer,
                        ),
                      ],
                    );
                  }
                },
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
