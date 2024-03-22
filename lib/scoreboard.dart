import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:math';
import 'communities.dart';
import 'settings.dart';
import 'challenges.dart';
import 'survey.dart';
import 'stepchallenge.dart';

class Scoreboard extends StatefulWidget {
  @override
  _ScoreboardState createState() => _ScoreboardState();
}

class _ScoreboardState extends State<Scoreboard> {
  int _selectedIndex = 3;
  List<String> names = ['John', 'Emma', 'Oliver', 'Sophia', 'Liam', 'Ava', 'Ethan', 'James', 'Mia'];
  List<int> steps = [3802330, 3551983, 3250008, 3129999, 3111734, 2900123, 2895778, 2856353, 2834612];

  static List<Widget> _widgetOptions = <Widget>[
    Survey(),
<<<<<<< Updated upstream:lib/scoreboard.dart
    Communities(),
    MyHomePage(),
    Text('Survey'),
    Settings(),
=======
    Text('Communities'),
    MyHomePage(title: 'Home'), // Placeholder for homepage
    Challenges(),
    Profile(),
>>>>>>> Stashed changes:lib/FirstLogin.dart
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
            MaterialPageRoute(builder: (context) => MyHomePage()),
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
            MaterialPageRoute(builder: (context) => Profile()),
          );
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Table scoreTable = Table(
      children: List<TableRow>.generate(
        9,
            (index) => TableRow(
          children: [
            Text('${index + 1}'),
            Text('${names[index]}'),
            Text('${steps[index]}'),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Scoreboard'),
      ),
      body: Center(child: scoreTable),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey, // Change the color here
        selectedItemColor: Colors.blueAccent, // Change the selected item color here
        unselectedItemColor: Colors.grey, // Change the unselected item color here
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
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}