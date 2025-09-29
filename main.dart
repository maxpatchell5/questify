import 'package:flutter/material.dart';
import 'screen/character_screen.dart';
import 'screen/dashboard_screen.dart';
import 'screen/profile_screen.dart';
import 'screen/quests_screen.dart';

void main() {
  runApp(const QuestifyApp());
}

class QuestifyApp extends StatefulWidget {
  const QuestifyApp({super.key});

  @override
  State<QuestifyApp> createState() => _QuestifyAppState();
}

class _QuestifyAppState extends State<QuestifyApp> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = <Widget>[
    DashboardScreen(),
    QuestsScreen(),
    CharacterScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Questify',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Quests'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Character'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}