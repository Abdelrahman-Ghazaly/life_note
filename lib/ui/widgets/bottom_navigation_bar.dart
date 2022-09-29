import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavigatorBar extends StatefulWidget {
  const BottomNavigatorBar({super.key});

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _screen = 1;

  void updatePage(int screen) {
    setState(() {
      _screen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      Center(
        child: Text(
          'Notes',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      Center(
        child: Text(
          'Add',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      Center(
        child: Text(
          'Category',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    ];
    return Scaffold(
      body: screens[_screen],
      bottomNavigationBar: CurvedNavigationBar(
        index: _screen,
        height: 60,
        backgroundColor: Theme.of(context).colorScheme.primary,
        buttonBackgroundColor: Theme.of(context).colorScheme.secondary,
        color: Theme.of(context).colorScheme.primary,
        key: _bottomNavigationKey,
        items: const <Widget>[
          Icon(Icons.note_alt_rounded),
          Icon(Icons.add),
          Icon(Icons.folder),
        ],
        onTap: (index) {
          setState(() {
            _screen = index;
          });
        },
      ),
    );
  }
}
