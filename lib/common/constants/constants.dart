import 'package:introduction_screen/introduction_screen.dart';
import 'package:life_note/ui/ui.dart';

final List<PageViewModel> kIntroductionPages = [
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
