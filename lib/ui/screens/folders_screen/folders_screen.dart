import 'package:flutter/material.dart';
import 'package:life_note/common/constants/json.dart';
import 'package:life_note/ui/ui.dart';
import 'package:life_note/utilities/utilities.dart';

class FoldersScreen extends StatelessWidget {
  const FoldersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Folders'),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: List.generate(4, ((index) {
          return Padding(
            padding:
                const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 15),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF413D4C),
                      Color(0xFF6F6FC8),
                    ],
                  )),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 10, right: 10, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: Utilities.screenWidth * 0.23,
                      height: Utilities.screenHeight * 0.115,
                      child: Image.asset(
                        'assets/images/Notes_Folder.png',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      folderList[index]['title'],
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          );
        })),
      ),
    );
  }
}
