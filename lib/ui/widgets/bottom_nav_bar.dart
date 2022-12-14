import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:life_note/ui/screens/screens.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
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
      const NotesScreen(),
      const AddScreen(),
      const FoldersScreen()
    ];
    return SafeArea(
      child: Scaffold(
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
      ),
    );
  }
}
