import 'package:flutter/material.dart';
import 'package:life_note/common/theme/theme.dart';
import 'package:life_note/ui/screens/onboarding_screen/onboarding_screen.dart';

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
