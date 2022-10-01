import 'dart:math';

import 'package:flutter/material.dart';
import 'package:life_note/global/constants/constants.dart';
import 'package:life_note/utilities/utilities.dart';

class WritingScreen extends StatefulWidget {
  final String? title;
  const WritingScreen({Key? key, this.title}) : super(key: key);

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
            Utilities.screenHeight * 0.065,
          ),
          child: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.arrow_back_ios),
                Text(
                  widget.title!,
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.ellipsis,
                ),
                const Icon(Icons.delete)
              ],
            ),
            elevation: 5,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Category'),
              ),
              SizedBox(
                height: Utilities.screenHeight * 0.8,
                width: Utilities.screenWidth,
                child: TextField(
                  cursorColor: Colors.black,
                  style: (Theme.of(context).textTheme.bodyMedium),
                  controller: controller,
                  keyboardType: TextInputType.multiline,
                  textAlignVertical: TextAlignVertical.top,
                  expands: true,
                  maxLines: null,
                  minLines: null,
                  decoration: const InputDecoration(
                    fillColor: Colors.black,
                    border: OutlineInputBorder(),
                    isDense: true,
                    contentPadding:
                        EdgeInsets.only(left: 8, bottom: 11, right: 8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
