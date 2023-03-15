import 'package:flutter/material.dart';
import 'package:task_4/shared/app_colors.dart';

class LogoImage extends StatelessWidget {
  final String logoImagePath;

  const LogoImage({
    required this.logoImagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.plainWhite,
          border: Border.all(color: AppColors.plainBlack, width: 2)),
      height: 200,
      child: Hero(
        tag: logoImagePath,
        child: Image.asset(logoImagePath),
      ),
    );
  }
}
