// challenges.dart
import 'main.dart';
import 'communities.dart';
import 'settings.dart';
import 'survey.dart';
import 'package:flutter/material.dart';
import 'stepchallenge.dart';

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
        title: Text('Challenges'),
      ),
      body: Center(
<<<<<<< Updated upstream
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => stepchallenge()),
            );
          },
          child: Container(
            width: 300, // specify the width
            height: 100, // specify the height
            decoration: BoxDecoration(
              color: Colors.blue, // specify the color
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Stepchallenge', // specify the text
                  style: TextStyle(
                    color: Colors.white, // specify the text color
                    fontSize: 20, // specify the text size
                  ),
=======
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
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
                  color: Colors.green, // Specify the color
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Stepchallenge', // Specify the text
                      style: TextStyle(
                      color: Colors.white, // Specify the text color
                      fontSize: 20, // Specify the text size
                      ),
                    ),
                    Text(
                      '100 Points', // Specify the text
                      style: TextStyle(
                        color: Colors.white, // Specify the text color
                        fontSize: 16, // Specify the text size
                      ),
                    ),
                    SizedBox(height: 15),
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
                  color: Colors.lightGreen, // Specify the color
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '8 Hours Sleep Challenge', // Specify the text
                      style: TextStyle(
                        color: Colors.white, // Specify the text color
                        fontSize: 20, // Specify the text size
                      ),
                    ),
                    Text(
                      '88 Points', // Specify the text
                      style: TextStyle(
                        color: Colors.white, // Specify the text color
                        fontSize: 16, // Specify the text size
                      ),
                    ),
                    SizedBox(height: 15),
                    LinearProgressIndicator(
                        value: 0.05, // Set the progress here (0.0 to 1.0)
                        backgroundColor: Colors.white, // Set the background color
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.red)
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
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
                    color: Color(0xFF234F1E), // Specify the color
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'One Healthy Meal per Day', // Specify the text
                      style: TextStyle(
                        color: Colors.white, // Specify the text color
                        fontSize: 20, // Specify the text size
                      ),
                    ),
                    Text(
                      '30 Points', // Specify the text
                      style: TextStyle(
                        color: Colors.white, // Specify the text color
                        fontSize: 16, // Specify the text size
                      ),
                    ),
                    SizedBox(height: 15),
                    LinearProgressIndicator(
                        value: 0.8, // Set the progress here (0.0 to 1.0)
                        backgroundColor: Colors.white, // Set the background color
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.red)
                    ),
                  ],
>>>>>>> Stashed changes
                ),
                SizedBox(height: 30), // Add some spacing
                LinearProgressIndicator(
                  value: 0.5, // Set the progress here (0.0 to 1.0)
                  backgroundColor: Colors.white, // Set the background color
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green), // Set the progress color
                ),
              ],
            ),
<<<<<<< Updated upstream
          ),
=======

          ],
>>>>>>> Stashed changes
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