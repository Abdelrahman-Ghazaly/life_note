import 'package:concentric_transition/page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_note/constants/theme/app_colors/app_color.dart';
import 'package:life_note/ui/screens/onboarding_screen/intro_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen(
      {Key? key, required this.bigText, required this.smallText})
      : super(key: key);
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ConcentricPageView(
          colors: const [
            AppColorDark.backgroundColor,
            AppColorDark.backgroundColor,
            AppColorDark.backgroundColor
          ],
          itemCount: 3,
          itemBuilder: (int index) =>
              IntroScreen(bigText: bigText, smallText: smallText),
        ),
      ),
    );
  }
}
