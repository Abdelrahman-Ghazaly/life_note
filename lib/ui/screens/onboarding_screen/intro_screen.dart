import 'package:flutter/material.dart';
import 'package:life_note/utilities/utilities.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({
    Key? key,
    required this.bigText,
    required this.smallText,
    required this.imageUrl,
  }) : super(key: key);
  final String bigText;
  final String smallText;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: Utilities.screenHeight * 0.35,
                  width: Utilities.screenWidth * 0.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              bigText,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              smallText,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
