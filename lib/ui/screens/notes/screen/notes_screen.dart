import 'package:flutter/material.dart';
import 'package:life_note/common/constants/json.dart';
import 'package:life_note/utilities/utilities.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            Utilities.screenHeight * 0.06,
          ),
          child: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Notes',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Row(
                  children: [
                    Text('data',
                        style: Theme.of(context).textTheme.displayMedium),
                    const Icon(Icons.search_sharp),
                    const Icon(Icons.add)
                  ],
                )
              ],
            ),
          )),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio:
                Utilities.screenHeight * 2 / Utilities.screenHeight * 0.35),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movieList[index]['title'],
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      movieList[index]['description'],
                      style: Theme.of(context).textTheme.bodySmall,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 7,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      movieList[index]['duration'],
                      style: Theme.of(context).textTheme.bodySmall,
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
