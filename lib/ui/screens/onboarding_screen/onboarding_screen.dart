import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:life_note/common/widgets/bottom_bar.dart';
import 'package:life_note/constants/theme/app_colors/app_color.dart';
import 'package:life_note/ui/screens/onboarding_screen/intro_screen.dart';
import 'package:life_note/ui/screens/splash_screen/splash_screen.dart';
import 'package:life_note/utilities/utilities.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen(
      {Key? key, required this.bigText, required this.smallText})
      : super(key: key);
  final String bigText;
  final String smallText;

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const IntroScreen(
        bigText: 'Life Note',
        smallText: 'Record Your Life\nNever Miss A Moment',
        imageUrl: r'assets/images/laptop_girl_1.gif',
      ),
      const IntroScreen(
        bigText: 'Dear Dirary',
        smallText: 'Record Your Life\nNever Miss A Moment',
        imageUrl: r'assets/images/boy_studying.gif',
      ),
      const IntroScreen(
        bigText: 'Note',
        smallText: 'Record Your Life\nNever Miss A Moment',
        imageUrl: r'assets/images/laptop_girl_2.gif',
      ),
      const SplashScreen(),
    ];

    return SafeArea(
      child: Scaffold(
        body: ConcentricPageView(
          radius: 30,
          verticalPosition: 0.85,
          colors: const [
            AppColorDark.buttonColor,
            AppColorDark.backgroundColor,
          ],
          itemCount: 4,
          itemBuilder: (int index) => index == 3
              ? Utilities().navigatTo(
                  context: context,
                  screen: const BottomBar(),
                )
              : pages[index],
        ),
      ),
    );
  }
}
