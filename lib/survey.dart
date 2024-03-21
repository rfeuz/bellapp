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
  final _textlaugh = TextEditingController();

  static List<Widget> _widgetOptions = <Widget>[
    Text('Survey'),
    Communities(),
    MyHomePage(), // Placeholder for homepage
    Challenges(),
    Settings(),
  ];

  @override
  void dispose() {
    _textgreatful.dispose(); // Don't forget to dispose the controller when not needed
    _textlaugh.dispose(); // Don't forget to dispose the controller when not needed
    super.dispose();
  }


  void output_to_data() {
    MindData.GeneralMindScore_actual = (_doing + _sleep + 6 - _stress)/15;
    FoodData.FoodHealthyness_actual = (_food + _fruit)/10;
    GlobalScores.PointScore += NumberOfPoints.NumberOfPointsSurvey;
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

  //_calculate() {
   // double _stressw = 6 - _stress;
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mindfulness'),
      ),
      body: Column(
        children: <Widget>[
          Text('How are you feeling?'),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text('Are you happy with the amount of fruit and vegetables you ate today?'),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text('Are you happy with the food you ate today?'),
          ),
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
          Text('What are you greatful for today?'),
          TextField(
            controller: _textgreatful,
          ),

          Text('What made you laugh today'),
          TextField(
            controller: _textlaugh,
          ),
          ElevatedButton(
              onPressed: () {
                output_to_data();
                print('Answer: ${_textgreatful.text}');
                print('Answer: ${_textlaugh.text}');
                print('Food-Score overall ${FoodData.FoodHealthyness_actual}');
                // Navigate to the second page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },

              child: Text('Submit')
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