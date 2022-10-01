import 'package:flutter/material.dart';
import 'package:life_note/utilities/utilities.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Utilities.screenHeight * 0.07,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
          width: 5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            30,
          ),
        ),
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        style: Theme.of(context).textTheme.bodyMedium,
        decoration: const InputDecoration(
          labelText: 'Confirm Your Password',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
