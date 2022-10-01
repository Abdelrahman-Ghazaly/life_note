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

List<PageViewModel> kIntroductionPages(BuildContext context) => [
      _page1.createModel(context),
      _page2.createModel(context),
      _page3.createModel(context),
    ];
