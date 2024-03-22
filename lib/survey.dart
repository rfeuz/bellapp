import 'package:flutter/material.dart';
import 'main.dart';
import 'communities.dart';
import 'settings.dart';
import 'challenges.dart';
import 'data.dart';

class Survey extends StatefulWidget {
  @override
  _SurveyState createState() => _SurveyState();
}


class _SurveyState extends State<Survey> {
  double _doing = 1;
  double _sleep = 1;
  double _stress = 1;
  double _fruit = 1;
  double _food = 1;
  int _selectedIndex = 0;
  final _textgreatful = TextEditingController();

  static List<Widget> _widgetOptions = <Widget>[
    Text('Survey'),
    Communities(),
    MyHomePage(title: 'Home'), // Placeholder for homepage
    Challenges(),
    Settings(),
  ];

  @override
  void dispose() {
    _textgreatful.dispose(); // Don't forget to dispose the controller when not needed
    super.dispose();
  }


  void output_to_data() {
    MindData.GeneralMindScore_actual = (_doing + _sleep + 6 - _stress)/15;
    FoodData.FoodHealthyness_actual = (_food + _fruit)/10;
    GlobalScores.PointScore += NumberOfPoints.NumberOfPointsSurvey;
    ProfileInformation.MyDiary[ProfileInformation.DiaryIndex];
    ProfileInformation.DiaryIndex = (ProfileInformation.DiaryIndex + 1) % ProfileInformation.MyDiary.length;
  }

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

    if (GlobalFlags.DailySurvey == false) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Daily Survey'),
        ),
        body: Column(
          children: <Widget>[
            Text('How are you feeling today?'),
            Slider(
              value: _doing,
              min: 1,
              max: 5,
              divisions: 4,
              label: _doing.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _doing = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Text('How would you rate your sleep?'),
            Slider(
              value: _sleep,
              min: 1,
              max: 5,
              divisions: 4,
              label: _sleep.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _sleep = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Text('How stressed are you today?'),
            Slider(
              value: _stress,
              min: 1,
              max: 5,
              divisions: 4,
              label: _stress.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _stress = value;
                  //_calculate();
                });
              },
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0), // Adjust vertical padding here
              child: Center(
                child: Text(
                  'Are you happy with the amount of fruit and vegetables you ate today?',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Slider(
              value: _fruit,
              min: 1,
              max: 5,
              divisions: 4,
              label: _fruit.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _fruit = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Text('Are you happy with the food you ate today?'),
            Slider(
              value: _food,
              min: 1,
              max: 5,
              divisions: 4,
              label: _food.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _food = value;
                });
              },
            ),
            const SizedBox(height: 30),
            Text('What are you greatful for today?'),
            TextField(
              controller: _textgreatful,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                output_to_data();
                GlobalFlags.DailySurvey = true;
                // Navigate to the second page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage(title: 'Home')),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0), // Adjust padding to increase button size
              ),
              child: Text('Submit for your daily ${NumberOfPoints.NumberOfPointsSurvey} Points!', style: TextStyle(fontSize: 16.0)), // Optional: Adjust font size
            ),
          ],
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

    } else {

      return Scaffold(
        appBar: AppBar(
          title: Text('Daily Survey'),
        ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Aligns children vertically in the middle
            children: <Widget>[
              const SizedBox(height: 100),
              Container(
                alignment: Alignment.center, // Aligns the text block to the center
                child: Text(
                  'You already filled out your daily survey',
                  style: TextStyle(
                    fontSize: 20.0, // Adjust the font size as needed
                    // You can add more text styles here such as fontWeight, color, etc.
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage(title: 'Home')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0), // Adjust padding to increase button size
                ),
                child: Text('Back to Homepage', style: TextStyle(fontSize: 16.0)), // Optional: Adjust font size
              ),
            ],
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


}