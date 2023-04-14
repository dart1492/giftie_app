import 'package:flutter/material.dart';
import 'package:giftie_app/shared/app_colors.dart';

class AuthorLabel extends StatelessWidget {
  const AuthorLabel({
    super.key,
    required this.rotationController,
  });

  final AnimationController rotationController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      top: 40,
      child: Row(
        children: [
          RotationTransition(
            turns: Tween(begin: 0.0, end: 1.0).animate(rotationController),
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.plainBlack),
                borderRadius: BorderRadius.circular(60),
                gradient: AppColors.greenBlueGradient,
              ),
              child: const Icon(
                Icons.star_border,
                size: 15,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 3),
            child: const Text(
              "by: Dart",
              style: TextStyle(fontFamily: 'Inter'),
            ),
          ),
        ],
      ),
    );
  }
}
