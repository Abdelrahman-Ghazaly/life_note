import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:life_note/utilities/utilities.dart';

class IntroScreen extends PageViewModel {
  IntroScreen({
    Key? key,
    required this.bigText,
    required this.smallText,
    required this.imageUrl,
  });
  final String bigText;
  final String smallText;
  final String imageUrl;

  PageViewModel build(BuildContext context) {
    return PageViewModel(
      title: bigText,
      body: smallText,
      image: Container(
        height: Utilities.screenHeight * 0.35,
        width: Utilities.screenWidth * 0.7,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
