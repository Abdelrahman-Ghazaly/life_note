import 'package:flutter/cupertino.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:life_note/ui/ui.dart';

const IntroData _page1 = IntroData(
  title: 'Life Note',
  body: 'Record Your Life\nNever Miss A Moment',
  imageUrl: r'assets/images/laptop_girl_1.gif',
);
const IntroData _page2 = IntroData(
  title: 'Dear Dirary',
  body: 'Record Your Life\nNever Miss A Moment',
  imageUrl: r'assets/images/boy_studying.gif',
);
const IntroData _page3 = IntroData(
  title: 'Notes',
  body: 'Record Your Life\nNever Miss A Moment',
  imageUrl: r'assets/images/laptop_girl_2.gif',
  hasFooter: true,
);
List<Color> colorChanger = const [
  Color.fromARGB(234, 36, 12, 248),
  Color(0x00ff0000),
  Color.fromARGB(255, 138, 243, 0),
  Color.fromARGB(169, 255, 0, 0),
  Color.fromARGB(242, 0, 225, 255),
  Color.fromARGB(244, 255, 0, 242),
  Color.fromARGB(255, 8, 8, 8),
  Color.fromARGB(255, 225, 255, 115),
  Color.fromARGB(242, 153, 0, 255),
  Color.fromARGB(226, 10, 247, 136),
];
Color newColor = colorChanger[0];
List<PageViewModel> kIntroductionPages(BuildContext context) => [
      _page1.createModel(context),
      _page2.createModel(context),
      _page3.createModel(context),
    ];
