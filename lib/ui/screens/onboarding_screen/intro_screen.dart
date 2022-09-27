import 'package:flutter/material.dart';
import 'package:life_note/utilities/utilities.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key, required this.bigText, required this.smallText})
      : super(key: key);
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: Utilities.screenHeight,
        width: Utilities.screenWidth,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: Utilities.screenHeight * 0.5,
                width: Utilities.screenWidth,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(r'assets/images/note_image.png'),
                )),
              ),
              Text(
                bigText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                smallText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Utilities().navigatTo(
                    context: context,
                    screen: const IntroScreen(
                      bigText: 'Daily Journal',
                      smallText: 'Note Your Day-to-Day Actvities',
                    ),
                  );
                },
                child: const Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
