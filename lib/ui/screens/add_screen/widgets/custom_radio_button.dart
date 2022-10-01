import 'package:flutter/material.dart';
import 'package:life_note/ui/screens/add_screen/add_screen.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton(
      {Key? key,
      required this.title,
      required this.value,
      required this.onChange})
      : super(key: key);
  final String title;
  final FileType value;
  final dynamic onChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        Radio(
          value: value,
          groupValue: selectedType,
          onChanged: onChange,
        ),
      ],
    );
  }
}
