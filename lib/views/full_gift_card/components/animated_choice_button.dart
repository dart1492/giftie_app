import 'package:flutter/material.dart';
import 'package:giftie_app/shared/app_colors.dart';

/// Button, that animated shadow when clicked.
/// Has default height and width of 50, which is a bit of a stretch,
/// but is acceptable in this test application
class AnimatedChoiceButton extends StatefulWidget {
  final Color? color;

  final Widget? child;

  final double? height;

  final double? width;

  final bool isSelected;

  final void Function() onTap;

  /// Button, that animated shadow when clicked.
  /// Has default height and width of 50, which is a bit of a stretch,
  /// but is acceptable in this test application
  const AnimatedChoiceButton({
    super.key,
    this.color,
    this.child,
    this.height,
    this.width,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<AnimatedChoiceButton> createState() => _AnimatedChoiceButtonState();
}

class _AnimatedChoiceButtonState extends State<AnimatedChoiceButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        alignment: Alignment.center,
        duration: const Duration(milliseconds: 300),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(
                  !widget.isSelected ? 0 : 2, !widget.isSelected ? 0 : 4),
            )
          ],
          color: widget.color ?? AppColors.plainWhite,
          border: Border.all(
            color: AppColors.plainBlack,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: widget.child,
      ),
    );
  }
}
