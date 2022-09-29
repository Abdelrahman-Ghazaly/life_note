import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:life_note/constants/theme/app_colors/app_color.dart';
import 'package:life_note/ui/screens/onboarding_screen/intro_screen.dart';
import 'package:life_note/ui/screens/splash_screen/splash_screen.dart';
import 'package:life_note/utilities/utilities.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    List<PageViewModel> pages = [
      PageViewModel(
        title: 'Life Note',
        body: 'Record Your Life\nNever Miss A Moment',
        image: Container(
          height: Utilities.screenHeight * 0.35,
          width: Utilities.screenWidth * 0.7,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(r'assets/images/laptop_girl_1.gif'),
            ),
          ),
        ),
      ),
      PageViewModel(
        title: 'Note',
        body: 'Record Your Life\nNever Miss A Moment',
        image: Container(
          height: Utilities.screenHeight * 0.35,
          width: Utilities.screenWidth * 0.7,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(r'assets/images/laptop_girl_2.gif'),
            ),
          ),
        ),
      ),
      PageViewModel(
        title: 'Dear Dirary',
        body: 'Record Your Life\nNever Miss A Moment',
        image: Container(
          height: Utilities.screenHeight * 0.35,
          width: Utilities.screenWidth * 0.7,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(r'assets/images/boy_studying.gif'),
            ),
          ),
        ),
        footer: Padding(
          padding: EdgeInsets.only(top: Utilities.screenHeight * 0.125),
          child: TextButton(
            onPressed: () {
              Utilities().navigatTo(
                context: context,
                screen: SplashScreen(),
              );
            },
            child: Text('data'),
          ),
        ),
      ),
    ];

    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          pages: pages,
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
          nextStyle: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.transparent),
          ),
          showDoneButton: false,
          isProgress: false,
        ),
      ),
    );
  }
}
