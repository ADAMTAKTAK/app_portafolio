import 'package:flutter/material.dart';
import 'package:app_portafolio/screens/screens.dart';
import 'package:app_portafolio/themes/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = [
    AboutScreen(),
    CommentsScreen(),
  ];

  static const List<Color> _neonColors = [
    AppTheme.tronBlue,
    AppTheme.tronOrange,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color activeNeonColor = _neonColors[_selectedIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _selectedIndex == 0 ? 'USER:// ABOUT' : 'PROGRAM:// COMMENTS',
          style: TextStyle(
            color: activeNeonColor,
            fontFamily: 'monospace',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
             icon: const Icon(Icons.music_off, color: AppTheme.tronCyanIcon),
             onPressed: () {}, 
          ),
          IconButton(
            icon: const Icon(Icons.code), 
            onPressed: () {
              Navigator.pushNamed(context, 'signature');
            },
          ),
        ],
      ),
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBarTheme(
        data: Theme.of(context).bottomNavigationBarTheme.copyWith(
              selectedItemColor: activeNeonColor,
            ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              activeIcon: Icon(Icons.account_circle),
              label: 'ABOUT',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sms_outlined),
              activeIcon: Icon(Icons.sms),
              label: 'COMMENTS',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}