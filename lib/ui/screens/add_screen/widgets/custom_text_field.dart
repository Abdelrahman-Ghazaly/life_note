import 'package:flutter/material.dart';
import 'package:life_note/utilities/utilities.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.controller,
    this.isPassword = false,
  }) : super(key: key);

  final String labelText;
  final TextEditingController controller;
  final bool isPassword;

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
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: labelText,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(
            bottom: 10,
            left: 20,
            right: 20,
          ),
        ),
      ),
    );
  }
}
