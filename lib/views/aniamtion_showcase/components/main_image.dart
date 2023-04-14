import 'package:flutter/material.dart';
import 'package:giftie_app/shared/app_colors.dart';

class MainImage extends StatefulWidget {
  const MainImage({
    super.key,
    required this.imageHeight,
    required this.imageWidth,
  });

  final Animation<double> imageHeight;
  final Animation<double> imageWidth;

  @override
  State<MainImage> createState() => _MainImageState();
}

class _MainImageState extends State<MainImage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool reversed = false;
  late Animation<double> anim1;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 4,
      ),
    );

    var tween = Tween<double>(
      begin: 0.005,
      end: 0.0,
    );
    anim1 = tween.animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInCirc,
      ),
    );

    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4(
        1,
        0,
        0,
        anim1.value,
        0,
        1,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        1,
      ),
      child: Container(
        height: widget.imageHeight.value,
        width: widget.imageWidth.value,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              offset: Offset(4, 4),
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ],
          border: Border.all(
            color: AppColors.plainBlack,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/background_welcome.jpg'),
          ),
        ),
      ),
    );
  }
}

class CustomTween extends Tween<double> {
  CustomTween() : super(begin: 0, end: 0);

  @override
  double lerp(double t) {
    if (t < 0.5) {
      return super.lerp(2 * t) - 0.001;
    } else {
      return super.lerp(2 * (1 - t)) + 0.001;
    }
  }
}
