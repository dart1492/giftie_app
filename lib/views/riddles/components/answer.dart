import 'package:flutter/material.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';
import 'package:giftie_app/views/riddles/components/refresh_button.dart';

class Answer extends StatefulWidget {
  final String answer;
  const Answer({
    super.key,
    required this.answer,
  });

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  bool isObscured = false;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorScheme>()!;

    return GestureDetector(
      onTap: () {
        setState(() {
          isObscured = !isObscured;
        });
      },
      child: Column(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              alignment: Alignment.center,
              child: isObscured
                  ? Text(
                      "Answer: ${widget.answer}",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: colors.textSecondary),
                    )
                  : Text(
                      "Reveal answer",
                      textAlign: TextAlign.justify,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: colors.secondary),
                    ),
            ),
          ),
          const RefreshButton(),
        ],
      ),
    );
  }
}
