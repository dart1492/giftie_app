import 'package:flutter/material.dart';

import 'package:task_4/shared/app_colors.dart';
import 'package:task_4/views/full_gift_card/components/animated_choice_button.dart';

class ColorsRow extends StatelessWidget {
  const ColorsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        AnimatedChoiceButton(
          color: AppColors.plainWhite,
        ),
        SizedBox(
          width: 20,
        ),
        AnimatedChoiceButton(
          color: AppColors.lightRed,
        ),
        SizedBox(
          width: 20,
        ),
        AnimatedChoiceButton(
          color: AppColors.lightBlue,
        ),
        SizedBox(
          width: 20,
        ),
        AnimatedChoiceButton(
          color: AppColors.plainWhite,
          child: Icon(
            Icons.color_lens,
            size: 35,
            color: AppColors.plainBlack,
          ),
        ),
      ],
    );
  }
}
