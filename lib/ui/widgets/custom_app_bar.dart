import 'package:flutter/material.dart';
import 'package:life_note/utilities/utilities.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Size get preferredSize => Size.fromHeight(
        Utilities.screenHeight * 0.06,
      );

  @override
  PreferredSize build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(
        Utilities.screenHeight * 0.06,
      ),
      child: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.search_sharp),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.add),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
