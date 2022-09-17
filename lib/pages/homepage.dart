import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mental_health_app/pages/Profile.dart';
import 'package:mental_health_app/pages/categories.dart';
import 'package:mental_health_app/pages/chat.dart';
import 'package:mental_health_app/utils/exercise_lists.dart';

import 'user-home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void bottomNavManagement(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    UserHomePage(),
    Categories(),
    Chat(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: bottomNavManagement,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home' ),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu' ),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_rounded),label: 'Inbox' ),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile' ),
        ],
      ),
      backgroundColor: Color(0xFF287EBE),
      body: _pages[_selectedIndex]
    );
  }
}
