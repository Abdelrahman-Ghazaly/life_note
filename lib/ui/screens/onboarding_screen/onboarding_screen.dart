import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:introduction_screen/introduction_screen.dart';
=======
import 'package:life_note/common/widgets/bottom_bar.dart';
import 'package:life_note/constants/theme/app_colors/app_color.dart';
>>>>>>> 61c6200d3b468e786fe9f4b7fa3fb1a158bc77d3
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
<<<<<<< HEAD
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
=======
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
>>>>>>> 61c6200d3b468e786fe9f4b7fa3fb1a158bc77d3
        ),
      ),
    );
  }
}
