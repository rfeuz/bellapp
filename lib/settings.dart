// Settings.dart
import 'data.dart';
import 'main.dart';
import 'communities.dart';
import 'survey.dart';
import 'challenges.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

<<<<<<< Updated upstream
class _Settings extends State<Settings> {
=======

class _Profile extends State<Profile> {
>>>>>>> Stashed changes
  int _selectedIndex = 4;

  static List<Widget> _widgetOptions = <Widget>[
    Survey(),
    Communities(),
    MyHomePage(), // Placeholder for homepage
    Challenges(),
    Text('Profile'),
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
        title: Text('Profile'),
        backgroundColor:
            Colors.green, // Setting background color of the app bar to green
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Slider for habits
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
<<<<<<< Updated upstream
                  Text('   Personal Information',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('   My Diary',
=======
                  Text(
                    '   Your Profile',
>>>>>>> Stashed changes
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Slider for profile
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyDiaryPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '   My Diary',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Slider for help
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '   Settings',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(Icons.arrow_forward),
                ],
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

<<<<<<< Updated upstream
=======

String convertDecimalToTime(double decimalHours) {
  // Extract hours and minutes
  int hours = decimalHours.floor();
  int minutes = ((decimalHours - hours) * 60).round();

  // Construct the time string
  String timeString = '$hours h';
  if (minutes > 0) {
    timeString += ' $minutes min';
  }

  return timeString;
}

>>>>>>> Stashed changes
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _name = ProfileInformation.name;
  int _age = ProfileInformation.age;
  double _stepgoal = FitnessData.NumberOfSteps_goal;
  double _sleepgoal = FitnessData.HoursOfSleep_goal;
  String _country = ProfileInformation.CountryOfOrigin;
  String _language = ProfileInformation.Language;
  String _location = ProfileInformation.Location;
  int _selectedIndex = 4;


  @override
  void initState() {
    super.initState();
    // Initialize the state variables with the provided userData
    setState(() {
      _name = ProfileInformation.name;
      _age = ProfileInformation.age;
      _stepgoal = FitnessData.NumberOfSteps_goal;
      _sleepgoal = FitnessData.HoursOfSleep_goal;
      _country = ProfileInformation.CountryOfOrigin;
      _language = ProfileInformation.Language;
      _location = ProfileInformation.Location;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    Survey(),
    Communities(),
    MyHomePage(), // Placeholder for homepage
    Challenges(),
    Text('Profile'),
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
        title: Text('Your Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                //not defined
              },
              child: Text(
                _name,
                style: TextStyle(
                  fontSize: 18.0),
              ),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Age'), // Hardcoded text on the left side
                  Text(
                    '${_age.toString()}J.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ), // Variable-based text on the right side
                ],
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Country'), // Hardcoded text on the left side
                  Text(
                    _country,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ), // Variable-based text on the right side
                ],
              ),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Location'), // Hardcoded text on the left side
                  Text(
                    _location.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ), // Variable-based text on the right side
                ],
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Language'), // Hardcoded text on the left side
                  Text(
                    _language,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ), // Variable-based text on the right side
                ],
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your Stepgoal'), // Hardcoded text on the left side
                  Text(
                    '${_stepgoal.toInt()} steps',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ), // Variable-based text on the right side
                ],
              ),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your Sleepgoal in hours'), // Hardcoded text on the left side
                  Text(
                    convertDecimalToTime(_sleepgoal),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ), // Variable-based text on the right side
                ],
              ),
            ),
            // Slider for help
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

<<<<<<< Updated upstream
class HelpPage extends StatefulWidget {
=======


class MyDiaryPage extends StatefulWidget {
>>>>>>> Stashed changes
  @override
  _MyDiaryPage createState() => _MyDiaryPage();
}

class _MyDiaryPage extends State<MyDiaryPage> {
  int _selectedIndex = 4;
  List<String> _mydiary = ProfileInformation.MyDiary;

  @override
  void initState() {
    super.initState();
    // Initialize the state variables with the provided userData

    setState(() {
      _mydiary = ProfileInformation.MyDiary;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    Survey(),
    Communities(),
    MyHomePage(), // Placeholder for homepage
    Challenges(),
    Text('Profile'),
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
        title: Text('Your Diary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Here is your personal Mental Health Diary of the last few days:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0, // Adjust the font size as needed
                // You can add more text styles here such as fontWeight, color, etc.
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                      leading: Icon(Icons.fiber_manual_record, size: 15), // Use any icon or bullet point icon you prefer
                      title: Text('${_mydiary[0]}'),
                  ),
                  ListTile(
                    leading: Icon(Icons.fiber_manual_record, size: 15),
                    title: Text('${_mydiary[1]}'),
                  ),
                  ListTile(
                    leading: Icon(Icons.fiber_manual_record, size: 15),
                    title: Text('${_mydiary[2]}'),
                  ),
                  ListTile(
                    leading: Icon(Icons.fiber_manual_record, size: 15),
                    title: Text('${_mydiary[3]}'),
                  ),
                  ListTile(
                    leading: Icon(Icons.fiber_manual_record, size: 15),
                    title: Text('${_mydiary[4]}'),
                  ),
                  ListTile(
                    leading: Icon(Icons.fiber_manual_record, size: 15),
                    title: Text('${_mydiary[5]}'),
                  ),
                  // Add more list items as needed
                ],
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



class SettingsPage extends StatefulWidget {
  @override
  _SettingsPage createState() => _SettingsPage();
}


class _SettingsPage extends State<SettingsPage> {

  int _selectedIndex = 4;

  static List<Widget> _widgetOptions = <Widget>[
    Survey(),
    Communities(),
    MyHomePage(title: 'Home'), // Placeholder for homepage
    Challenges(),
    Text('Profile'),
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
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {},
              child: Text('Your HR Contact'),
            ),
            SizedBox(height: 5),

            ElevatedButton(
                onPressed: () {
                  //not defined
                },
                child: Text('+41 123 45 67')),
            SizedBox(height: 20),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {},
              child: Text('For further iformation, please visit:'),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                //not defined
              },
              child: Text('www.bellfoodgroup.com'),
            ),
            SizedBox(height: 20),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {},
              child: Text('To report any issues, please contact: '),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                //not defined
              },
              child: Text('it.support@bellfood.com'),
            ),
            // Slider for help
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
<<<<<<< Updated upstream
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class UsefulResourcesPage extends StatefulWidget {
  @override
  _UsefulResourcesPage createState() => _UsefulResourcesPage();
}

class _UsefulResourcesPage extends State<UsefulResourcesPage> {
  int _selectedIndex = 4;
  static List<Widget> _widgetOptions = <Widget>[
    Survey(),
    Communities(),
    MyHomePage(), // Placeholder for homepage
    Challenges(),
    Text('Settings'),
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
        title: Text('Useful Resources'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {},
              child: Text('More insights about nutrition'),
            ),
            SizedBox(height: 5),

            ElevatedButton(
                onPressed: () {
                  //not defined
                },
                child: Text('www.healthy-nutrition.com')),
            SizedBox(height: 20),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {},
              child: Text('Want to build long lasting habits?'),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                //not defined
              },
              child: Text('www.how-to-build-habits.com'),
            ),
            SizedBox(height: 20),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {},
              child: Text('How about some additional exercises?'),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                //not defined
              },
              child: Text('www.gymfacts.com'),
            ),
            // Slider for help
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
=======
            label: 'Profile',
>>>>>>> Stashed changes
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
