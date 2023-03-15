import 'package:flutter/material.dart';
import 'package:task_4/shared/app_colors.dart';

class SelectCardButton extends StatelessWidget {
  const SelectCardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.lightGreen, AppColors.lightBlue],
        ),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Colors.black,
        ),
        color: AppColors.plainWhite,
      ),
      child: Row(children: [
        Expanded(
          flex: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.plainWhite,
              ),
              alignment: Alignment.center,
              child: Text(
                "\$25",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: AppColors.plainBlack,
                  width: 2,
                ),
              ),
            ),
            child: Text(
              "Select card",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
            ),
          ),
        )
      ]),
    );
  }
}
