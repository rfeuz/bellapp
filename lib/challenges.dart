// challenges.dart
import 'main.dart';
import 'communities.dart';
import 'settings.dart';
import 'survey.dart';
import 'package:flutter/material.dart';
import 'stepchallenges.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Center(child: Text('This is the Details Page')),
    );
  }
}

class Challenges extends StatefulWidget {
  @override
  _Challenges createState() => _Challenges();
}

class _Challenges extends State<Challenges> {

  int _selectedIndex = 3;

  static List<Widget> _widgetOptions = <Widget>[
    Survey(),
    Communities(),
    MyHomePage(title: 'Home'),
    Text('Survey'),
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
        title: Text('Challenges'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => stepchallenge()),
                );
              },
              child: Container(
                width: 300, // Specify the width
                height: 100, // Specify the height
                decoration: BoxDecoration(
                  color: Colors.green.shade800, // Specify the color
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Stepchallenge', // Specify the text
                      style: TextStyle(
                      color: Colors.white, // Specify the text color
                      fontSize: 30, // Specify the text size
                      ),
                    ),
                    SizedBox(height: 30),
                    LinearProgressIndicator(
                      value: 0.5, // Set the progress here (0.0 to 1.0)
                      backgroundColor: Colors.white, // Set the background color
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red)
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30), // Add some spacing
            Container(
              width: 300, // specify the width
              height: 100, // specify the height
              decoration: BoxDecoration(
                color: Colors.green, // specify the color
              ),
              child: Center(
                child: Text(
                  '8h sleeping challenge', // specify the text
                  style: TextStyle(
                    color: Colors.white, // specify the text color
                    fontSize: 30, // specify the text size
                  ),
                ),
              ),
            ),
            SizedBox(height: 30), // Add some spacing

          ],
        ),
      ),
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
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}