import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:giftie_app/shared/app_colors.dart';

import '../../../routes/router.gr.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
    required this.buttonOpacity,
    required this.buttonBorderWidth,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.textOpacity,
    required this.isActive,
  });

  final bool isActive;
  final Animation<double> buttonOpacity;
  final Animation<Border?> buttonBorderWidth;
  final Animation<double> buttonHeight;
  final Animation<double> buttonWidth;
  final Animation<double> textOpacity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isActive) {
          context.router.replace(const Root());
        }
      },
      child: Opacity(
        opacity: buttonOpacity.value,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            gradient: AppColors.greenBlueGradient,
            border: buttonBorderWidth.value,
          ),
          height: buttonHeight.value,
          width: buttonWidth.value,
          alignment: Alignment.center,
          child: Opacity(
            opacity: textOpacity.value,
            child: const Text(
              "Get started!",
              style: TextStyle(
                fontSize: 24,
                color: AppColors.plainBlack,
                fontFamily: 'Inter',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
