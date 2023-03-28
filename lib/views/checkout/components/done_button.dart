import 'package:flutter/material.dart';
import 'package:giftie_app/shared/app_colors.dart';

class DoneButton extends StatefulWidget {
  const DoneButton({
    super.key,
  });

  @override
  State<DoneButton> createState() => _DoneButtonState();
}

class _DoneButtonState extends State<DoneButton> {
  bool isTaped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isTaped = true;
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        onEnd: () => setState(
          () {
            isTaped = false;
          },
        ),
        alignment: Alignment.center,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(
                isTaped ? 4 : 0,
                isTaped ? 4 : 0,
              ),
            )
          ],
          gradient: AppColors.greenBlueGradient,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.plainBlack, width: 2),
        ),
        child: Text(
          "Done",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
