import 'package:flutter/material.dart';
import 'package:life_note/utilities/utilities.dart';

class WriteScreen extends StatefulWidget {
  const WriteScreen({Key? key}) : super(key: key);

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: Utilities.screenHeight,
          width: Utilities.screenWidth,
          child: TextField(
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.pinkAccent),
            controller: controller,
            keyboardType: TextInputType.text,
            decoration: new InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Hello input here',
              isDense: true,
              contentPadding:
                  EdgeInsets.only(left: 5, bottom: 11, top: 11, right: 5),
            ),
          ),
        ),
      ),
    );
  }
}
