import 'package:bellapp/data.dart';
import 'package:flutter/material.dart';
import 'communities.dart';
import 'settings.dart';
import 'survey.dart';
import 'challenges.dart';
import 'FirstLogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

void calculate_health_score() {
  GlobalScores.FitnessScore = ((1/3)*100*((FitnessData.NumberOfSteps_actual/FitnessData.NumberOfSteps_goal)+(FitnessData.NumberOfFloors_actual/FitnessData.NumberOfFloors_goal)+(FitnessData.HoursOfSleep_actual/FitnessData.NumberOfSteps_goal))).toInt();
  GlobalScores.FoodScore = (100*FoodData.FoodHealthyness_actual).toInt();
  GlobalScores.MindScore = (100*MindData.GeneralMindScore_actual).toInt();
}

// Define the arguments class
class MyPageArguments {
  final String message;

  MyPageArguments(this.message);
}


class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 2;
  int _score_mainboard = GlobalScores.PointScore;

  @override
  void initState() {
    super.initState();
    // Initialize the state variables with the provided userData
    if (GlobalFlags.FirstLogin == true) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Communities()),
      );
    }
    setState(() {
      _selectedIndex = 2;
      _score_mainboard = GlobalScores.PointScore;
      calculate_health_score();
    });
    print('Welcome');
  }


  static List<Widget> _widgetOptions = <Widget>[
    Survey(),
    Communities(),
    Text('Home'), // Placeholder for homepage
    Challenges(),
    Settings(),
  ];

  String getChatBotMessage() {
    int TotalScore = ((1/3)*(GlobalScores.MindScore+GlobalScores.FoodScore+GlobalScores.FitnessScore)).toInt();
    if (TotalScore > GlobalScores.ScoreUpperBound) {
      // Everything Fine
      ChatBotAnswers.FineIndex = (ChatBotAnswers.FineIndex + 1) % ChatBotAnswers.EverythingFine.length;
      return ChatBotAnswers.EverythingFine[ChatBotAnswers.FineIndex];
    } else if (GlobalScores.MindScore < GlobalScores.FoodScore && GlobalScores.MindScore < GlobalScores.FitnessScore) {
      // Improve Health of Mind
      ChatBotAnswers.MindfulIndex = (ChatBotAnswers.MindfulIndex + 1) % ChatBotAnswers.MoreMindfulness.length;
      return ChatBotAnswers.MoreMindfulness[ChatBotAnswers.MindfulIndex];
    } else if (GlobalScores.FoodScore < GlobalScores.FitnessScore) {
      // Improve Food Health
      ChatBotAnswers.FoodIndex = (ChatBotAnswers.FoodIndex + 1) % ChatBotAnswers.MoreHealthyFood.length;
      return ChatBotAnswers.MoreHealthyFood[ChatBotAnswers.FoodIndex];
    } else {
      // Improve Fitness
      ChatBotAnswers.FitnessIndex = (ChatBotAnswers.FitnessIndex + 1) % ChatBotAnswers.MoreFitness.length;
      return ChatBotAnswers.MoreFitness[ChatBotAnswers.FitnessIndex];
    }
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
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.grey[2000],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 40),
            const Text(
              'Your Score',
              style: TextStyle(
                fontSize: 40, // Change the font size here
              ),
            ),
            Text(
              '$_score_mainboard',
              style: TextStyle(
                fontSize: 60, // Change the font size here
                fontFamily: 'Oswald', // Change 'YourFontFamily' to the desired font family
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.person, size: 50.0),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
