import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:life_note/ui/screens/onboarding_screen/intro_screen.dart';

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
      IntroScreen(
        bigText: 'Life Note',
        smallText: 'Record Your Life\nNever Miss A Moment',
        imageUrl: r'assets/images/laptop_girl_1.gif',
      ),
      IntroScreen(
        bigText: 'Dear Dirary',
        smallText: 'Record Your Life\nNever Miss A Moment',
        imageUrl: r'assets/images/boy_studying.gif',
      ),
      IntroScreen(
        bigText: 'Note',
        smallText: 'Record Your Life\nNever Miss A Moment',
        imageUrl: r'assets/images/laptop_girl_2.gif',
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
