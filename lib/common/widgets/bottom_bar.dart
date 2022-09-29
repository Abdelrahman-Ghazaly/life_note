import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:life_note/ui/screens/notes/screen/notes_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _page = 1;

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const NotesScreen(),
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
      body: pages[_page],
      bottomNavigationBar: CurvedNavigationBar(
        index: _page,
        height: 60,
        backgroundColor: const Color(0xFF1F1D2B),
        buttonBackgroundColor: const Color(0xFF6F6FC8),
        color: const Color(0xFF1F1D2B),
        key: _bottomNavigationKey,
        items: const <Widget>[
          Icon(Icons.note_alt_rounded),
          Icon(Icons.add),
          Icon(Icons.folder),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}
