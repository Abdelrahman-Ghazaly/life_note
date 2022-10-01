import 'package:flutter/material.dart';
import 'package:life_note/utilities/utilities.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    Key? key,
    required this.value,
    required this.onChange,
    required this.title,
  }) : super(key: key);
  final bool value;
  final void Function(bool?) onChange;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: Utilities.screenWidth * 0.7,
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Checkbox(
          value: value,
          onChanged: onChange,
        )
      ],
    );
  }
}
