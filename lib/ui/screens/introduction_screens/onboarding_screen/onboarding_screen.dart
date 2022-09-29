import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:life_note/global/constants/constants.dart';

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
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          pages: kIntroductionPages(context),
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
