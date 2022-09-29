import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:life_note/utilities/utilities.dart';

class IntroData {
  const IntroData({
    required this.title,
    required this.body,
    required this.imageUrl,
    this.hasFooter = false,
  });

  final String title;
  final String body;
  final String imageUrl;
  final bool hasFooter;

  PageViewModel createModel(BuildContext context) =>
      _createModel(context, this);
}

PageViewModel _createModel(BuildContext context, IntroData introData) {
  return PageViewModel(
    titleWidget: Text(
      introData.title,
      style: Theme.of(context).textTheme.titleMedium,
    ),
    bodyWidget: Text(
      introData.body,
      style: Theme.of(context).textTheme.bodyLarge!,
      textAlign: TextAlign.center,
    ),
    image: Container(
      height: Utilities.screenHeight * 0.35,
      width: Utilities.screenWidth * 0.7,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(introData.imageUrl),
        ),
      ),
    ),
    footer: introData.hasFooter
        ? Padding(
            padding: EdgeInsets.only(top: Utilities.screenHeight * 0.125),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Get Started',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          )
        : null,
  );
}
