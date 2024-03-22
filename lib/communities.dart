// new_screen.dart

import 'package:flutter/material.dart';
import 'main.dart';
import 'survey.dart';
import 'settings.dart';
import 'challenges.dart';

class Communities extends StatefulWidget {
  @override
  _Communities createState() => _Communities();
}

class _Communities extends State<Communities> {

  int _selectedIndex = 1;

  static List<Widget> _widgetOptions = <Widget>[
    Survey(),
    Text('Communities'),
    MyHomePage(title: 'Home'), // Placeholder for homepage
    Challenges(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Survey()),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Communities()),
          );
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage(title: 'Home')),
          );
          break;
        case 3:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Challenges()),
          );
          break;
        case 4:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Settings()),
          );
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            coloredContainer("Block 1", Colors.green.shade300),
            SizedBox(height: 25),
            coloredContainer("Block 2", Colors.green.shade400),
            SizedBox(height: 25),
            coloredContainer("Block 3", Colors.green.shade500),
            SizedBox(height: 25),
            coloredContainer("Block 4", Colors.green.shade600),
            SizedBox(height: 25),
            coloredContainer("Block 5", Colors.green.shade700),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        // Change the color here
        selectedItemColor: Colors.blueAccent,
        // Change the selected item color here
        unselectedItemColor: Colors.grey,
        // Change the unselected item color here
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Survey',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Challenges',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
  Widget coloredContainer(String title, Color color) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}