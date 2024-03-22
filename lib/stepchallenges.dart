import 'package:flutter/material.dart';
import 'main.dart';
import 'communities.dart';
import 'settings.dart';
import 'challenges.dart';
import 'survey.dart';

class stepchallenge extends StatefulWidget {
  @override
  _stepchallenge createState() => _stepchallenge();
}

class ScoreboardPage extends StatelessWidget {
  final List<String> playerNames = ['John', 'Kim', 'Liam', 'Emma', 'Noah','Louis', 'Francesca', 'David', 'Noelle'];
  final List<int> playerScores = [2881825, 2832540, 2327408, 2250825, 2182354, 1732627, 1428626, 1386464, 1147986];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scoreboard'),
      ),
      body: ListView.builder(
        itemCount: playerNames.length, // Use length of playerNames list for item count
        itemBuilder: (context, index) {
          return ListTile(

            leading: Text(
              '${index +1}.  ${playerNames[index]}',

              style: TextStyle(fontSize: 25.0), // Change font size here
            ),
            trailing: Text(
              '${playerScores[index]}',
              style: TextStyle(fontSize: 25.0), // Change font size here
            ),
          );
        },
      ),
    );
  }
}


class _stepchallenge extends State<stepchallenge> {

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
                  MaterialPageRoute(builder: (context) => ScoreboardPage()),
                );
              },
              child: Container(
                width: 300, // Specify the width
                height: 70, // Specify the height
                decoration: BoxDecoration(
                  color: Colors.green.shade800, // Specify the color
                ),
                child: Center(
                  child: Text(
                    'total', // Specify the text
                    style: TextStyle(
                      color: Colors.black, // Specify the text color
                      fontSize: 30, // Specify the text size
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
                color: Colors.green.shade600, // specify the color
              ),
              child: Center(
                child: Text(
                  'monthly', // specify the text
                  style: TextStyle(
                    color: Colors.black, // specify the text color
                    fontSize: 30, // specify the text size
                  ),
                ),
              ),
            ),
            SizedBox(height: 30), // Add some spacing
            Container(
              width: 300, // specify the width
              height: 70, // specify the height
              decoration: BoxDecoration(
                color: Colors.green.shade400, // specify the color
              ),
              child: Center(
                child: Text(
                  'daily', // specify the text
                  style: TextStyle(
                    color: Colors.black, // specify the text color
                    fontSize: 30, // specify the text size
                  ),
                ),
              ),
            ),
            SizedBox(height: 30), // Add some spacing
            Container(
              width: 300, // specify the width
              height: 70, // specify the height
              decoration: BoxDecoration(
                color: Colors.green.shade600, // specify the color
              ),
              child: Center(
                child: Text(
                  'internal location', // specify the text
                  style: TextStyle(
                    color: Colors.black, // specify the text color
                    fontSize: 30, // specify the text size
                  ),
                ),
              ),
            ),
            SizedBox(height: 30), // Add some spacing
            Container(
              width: 300, // specify the width
              height: 70, // specify the height
              decoration: BoxDecoration(
                color: Colors.green.shade800, // specify the color
              ),
              child: Center(
                child: Text(
                  'Country battle', // specify the text
                  style: TextStyle(
                    color: Colors.black, // specify the text color
                    fontSize: 30, // specify the text size
                  ),
                ),
              ),
            ),
            SizedBox(height: 30), // Add some spacing
            Container(
              width: 300, // specify the width
              height: 70, // specify the height
              decoration: BoxDecoration(
                color: Colors.green.shade900, // specify the color
              ),
              child: Center(
                child: Text(
                  'Age battle', // specify the text
                  style: TextStyle(
                    color: Colors.black, // specify the text color
                    fontSize: 30, // specify the text size
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
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

