import 'home.dart';
import 'information.dart';
import 'records.dart';
import 'category.dart';
import 'about.dart';
import 'drawer.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tabs = [
    Center(child: Home()),
    Center(child: Information()),
    Center(child: StudentRecordDataTable()),
    Center(child: Category()),
    Center(child: About()),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            'StudentHub',
            style: TextStyle(fontSize: 26, color: Colors.white),
          ),
        ),

        drawer: AppDrawer(
          onItemSelected: (index) {
            if (index >= 0 && index < tabs.length) {
              setState(() {
                _currentIndex = index;
              });
            }
          },
        ),

        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.pinkAccent,
          selectedItemColor: Colors.white,
          selectedFontSize: 19.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentIndex < 3 ? _currentIndex : 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Students',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Records',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
