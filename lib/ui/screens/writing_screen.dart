import 'package:flutter/material.dart';
import 'package:life_note/utilities/utilities.dart';

class WritingScreen extends StatefulWidget {
  const WritingScreen({Key? key}) : super(key: key);

  @override
  State<WritingScreen> createState() => _WritingScreenState();
}

class _WritingScreenState extends State<WritingScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(
            Utilities.screenWidth,
            60,
          ),
          child: AppBar(
            title: TextField(
              textAlignVertical: TextAlignVertical.center,
            ),
            elevation: 5,
          ),
        ),
        body: SizedBox(
          height: Utilities.screenHeight,
          width: Utilities.screenWidth,
          child: TextField(
            cursorColor: Colors.black,
            style: Theme.of(context).textTheme.bodyMedium,
            controller: controller,
            keyboardType: TextInputType.multiline,
            textAlignVertical: TextAlignVertical.top,
            expands: true,
            maxLines: null,
            minLines: null,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
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
