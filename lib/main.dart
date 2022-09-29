import 'package:flutter/material.dart';
import 'package:life_note/global/theme/theme.dart';
import 'package:life_note/ui/screens/introduction_screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: getDarkThemeData(),
        home: const OnboardingScreen());
  }
}
