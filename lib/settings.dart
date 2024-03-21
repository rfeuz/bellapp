// Settings.dart

import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
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
                // Navigate to the 'Habits' page
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '   Profile',
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
                      builder: (context) => UsefulResourcesPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '   Useful Resources',
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
                  MaterialPageRoute(builder: (context) => HelpPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '   Help',
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
    );
  }
}

class ProfilePage extends StatelessWidget {
  String _name = 'test';
  double _age = 37;
  double _stepgoal = 37;
  double _sleepgoal = 37;
  String _country = 'test';
  String _language = 'test';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
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
              child: Text(_name),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Age'), // Hardcoded text on the left side
                  Text(
                    _age.toString(),
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
                    _stepgoal.toString(),
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
                  Text('Your Sleepgoal'), // Hardcoded text on the left side
                  Text(
                    _sleepgoal.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ), // Variable-based text on the right side
                ],
              ),
            ),
            // Slider for help
          ],
        ),
      ),
    );
  }
}

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
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
                child: Text('#41 000 00 00')),
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
    );
  }
}

class UsefulResourcesPage extends StatelessWidget {
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
    );
  }
}
