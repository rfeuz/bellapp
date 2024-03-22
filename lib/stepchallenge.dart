import 'package:flutter/material.dart';
import 'main.dart';
import 'communities.dart';
import 'settings.dart';
import 'challenges.dart';
import 'scoreboard.dart';
import 'survey.dart';

class stepchallenge extends StatefulWidget {
  @override
  _stepchallenge createState() => _stepchallenge();
}

class _stepchallenge extends State<stepchallenge> {
  int _selectedIndex = 3;

  static List<Widget> _widgetOptions = <Widget>[
    Survey(),
    Communities(),
    MyHomePage(),
    Text('Survey'),
    Profile(),
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepchallenge'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Scoreboard()),
                );
              },
              child: Container(
                width: 300, // Specify the width
                height: 70, // Specify the height
                decoration: BoxDecoration(
                  color: Colors.blue, // Specify the color
                ),
                child: Center(
                  child: Text(
                    'total', // Specify the text
                    style: TextStyle(
                      color: Colors.white, // Specify the text color
                      fontSize: 20, // Specify the text size
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30), // Add some spacing
            Container(
              width: 300, // specify the width
              height: 70, // specify the height
              decoration: BoxDecoration(
                color: Colors.red, // specify the color
              ),
              child: Center(
                child: Text(
                  'monthly', // specify the text
                  style: TextStyle(
                    color: Colors.white, // specify the text color
                    fontSize: 20, // specify the text size
                  ),
                ),
              ),
            ),
            SizedBox(height: 30), // Add some spacing
            Container(
              width: 300, // specify the width
              height: 70, // specify the height
              decoration: BoxDecoration(
                color: Colors.orange, // specify the color
              ),
              child: Center(
                child: Text(
                  'daily', // specify the text
                  style: TextStyle(
                    color: Colors.white, // specify the text color
                    fontSize: 20, // specify the text size
                  ),
                ),
              ),
            ),
            SizedBox(height: 30), // Add some spacing
            Container(
              width: 300, // specify the width
              height: 70, // specify the height
              decoration: BoxDecoration(
                color: Colors.green, // specify the color
              ),
              child: Center(
                child: Text(
                  'Box 2', // specify the text
                  style: TextStyle(
                    color: Colors.white, // specify the text color
                    fontSize: 20, // specify the text size
                  ),
                ),
              ),
            ),
            SizedBox(height: 30), // Add some spacing
            Container(
              width: 300, // specify the width
              height: 70, // specify the height
              decoration: BoxDecoration(
                color: Colors.orange, // specify the color
              ),
              child: Center(
                child: Text(
                  'Box 3', // specify the text
                  style: TextStyle(
                    color: Colors.white, // specify the text color
                    fontSize: 20, // specify the text size
                  ),
                ),
              ),
            ),
            SizedBox(height: 30), // Add some spacing
            Container(
              width: 300, // specify the width
              height: 70, // specify the height
              decoration: BoxDecoration(
                color: Colors.black, // specify the color
              ),
              child: Center(
                child: Text(
                  'Box 2', // specify the text
                  style: TextStyle(
                    color: Colors.white, // specify the text color
                    fontSize: 20, // specify the text size
                  ),
                ),
              ),
            ),
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
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

