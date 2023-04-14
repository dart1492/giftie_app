import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:giftie_app/routes/router.gr.dart';
import 'package:giftie_app/shared/app_colors.dart';
import 'package:giftie_app/shared/theme/custom_color_scheme/app_color_scheme.dart';
import 'package:giftie_app/views/aniamtion_showcase/components/author_label.dart';
import 'package:giftie_app/views/aniamtion_showcase/components/get_started_button.dart';
import 'package:giftie_app/views/aniamtion_showcase/components/main_image.dart';
import 'package:hive_flutter/adapters.dart';

@RoutePage()
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late AnimationController mainController;
  late AnimationController rotationController;

  late Animation<double> buttonOpacity;
  late Animation<double> textOpacity;
  late Animation<double> buttonWidth;
  late Animation<double> buttonHeight;
  late Animation<Border?> buttonBorderWidth;
  late Animation<double> titleOpacity;
  late Animation<double> imageHeight;
  late Animation<double> imageWidth;
  late Animation<double> boxShadowOffset;
  bool isButtonActive = false;

  @override
  void initState() {
    super.initState();

    mainController = AnimationController(
      duration: const Duration(seconds: 6),
      vsync: this,
    );

    rotationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    titleOpacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: mainController,
        curve: const Interval(
          0.0,
          0.300,
          curve: Curves.ease,
        ),
      ),
    );

    imageHeight = Tween<double>(
      begin: 0.0,
      end: 500,
    ).animate(
      CurvedAnimation(
        parent: mainController,
        curve: const Interval(
          0.300,
          0.500,
          curve: Curves.ease,
        ),
      ),
    );

    imageWidth = Tween<double>(
      begin: 0.0,
      end: 300,
    ).animate(
      CurvedAnimation(
        parent: mainController,
        curve: const Interval(
          0.300,
          0.500,
          curve: Curves.ease,
        ),
      ),
    );

    initButtonAnimations();

    mainController.forward();
    rotationController.repeat();
  }

  void initButtonAnimations() {
    buttonOpacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: mainController,
        curve: const Interval(
          0.500,
          1.0,
          curve: Curves.ease,
        ),
      ),
    );

    buttonWidth = Tween<double>(
      begin: 0.0,
      end: 200,
    ).animate(
      CurvedAnimation(
        parent: mainController,
        curve: const Interval(
          0.500,
          0.750,
          curve: Curves.ease,
        ),
      ),
    );

    buttonHeight = Tween<double>(
      begin: 0.0,
      end: 50,
    ).animate(
      CurvedAnimation(
        parent: mainController,
        curve: const Interval(
          0.500,
          0.750,
          curve: Curves.ease,
        ),
      ),
    );

    buttonBorderWidth = BorderTween(
      begin: null,
      end: Border.all(
        width: 1,
        color: AppColors.plainBlack,
      ),
    ).animate(
      CurvedAnimation(
        parent: mainController,
        curve: const Interval(
          0.500,
          0.750,
          curve: Curves.ease,
        ),
      ),
    );

    boxShadowOffset = Tween<double>(
      begin: 0.0,
      end: 200,
    ).animate(
      CurvedAnimation(
        parent: mainController,
        curve: const Interval(
          0.500,
          0.750,
          curve: Curves.ease,
        ),
      ),
    );

    textOpacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: mainController,
        curve: const Interval(
          0.600,
          0.750,
          curve: Curves.ease,
        ),
      ),
    );

    textOpacity.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          setState(
            () {
              isButtonActive = true;
            },
          );
        }
      },
    );
  }

  @override
  void dispose() {
    mainController.dispose();
    rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightWhiteGreen,
      body: AnimatedBuilder(
        animation: mainController,
        builder: (context, child) {
          return Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Opacity(
                      opacity: titleOpacity.value,
                      child: const Text(
                        "Giftie",
                        style: TextStyle(
                          fontSize: 82,
                          color: AppColors.plainBlack,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    MainImage(
                      imageHeight: imageHeight,
                      imageWidth: imageWidth,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    GetStartedButton(
                      isActive: isButtonActive,
                      buttonOpacity: buttonOpacity,
                      buttonBorderWidth: buttonBorderWidth,
                      buttonHeight: buttonHeight,
                      buttonWidth: buttonWidth,
                      textOpacity: textOpacity,
                    ),
                  ],
                ),
              ),
              AuthorLabel(rotationController: rotationController),
            ],
          );
        },
      ),
    );
  }
}
