import 'package:bellapp/data.dart';
import 'package:flutter/material.dart';
import 'communities.dart';
import 'settings.dart';
import 'survey.dart';
import 'challenges.dart';
import 'ui_format/score_view.dart';
import 'ui_format/avatar_view.dart';
import 'ui_format/theme.dart';
import 'ui_format/title_view.dart';
import 'ui_format/education_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: FitnessAppHomeScreen(),
    );
  }
}

class FitnessAppHomeScreen extends StatefulWidget {
  @override
  _FitnessAppHomeScreenState createState() => _FitnessAppHomeScreenState();
}

<<<<<<< Updated upstream
class _FitnessAppHomeScreenState extends State<FitnessAppHomeScreen>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<TabIconData> tabIconsList = TabIconData.tabIconsList;
  Widget tabBody = Container(
    color: FitnessAppTheme.background,
  );
=======
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
  String _ChatBotAdvice = ChatBotAnswers.MoreMindfulness[0];
>>>>>>> Stashed changes

  @override
  void initState() {
    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;
    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    tabBody = EducationScreen(animationController: animationController);
    super.initState();
<<<<<<< Updated upstream
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
=======
    // Initialize the state variables with the provided userData
    if (GlobalFlags.FirstLogin == true) {
      // Stuff for first login
    }
    Dates.ActualDate = DateTime.now();
    if (Dates.DateBefore.isBefore(Dates.ActualDate)) {
      GlobalFlags.DailySurvey = false;
      Dates.DateBefore = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 1, 0, 0, 0);
    }
    setState(() {
      _selectedIndex = 2;
      _score_mainboard = GlobalScores.PointScore;
      calculate_health_score();
    });
  }


  static List<Widget> _widgetOptions = <Widget>[
    Survey(),
    Communities(),
    Text('Home'), // Placeholder for homepage
    Challenges(),
    Profile(),
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
            MaterialPageRoute(builder: (context) => Profile()),
          );
          break;
      }
    });
>>>>>>> Stashed changes
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return Container(
      color: FitnessAppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder<bool>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return Stack(
                children: <Widget>[
                  tabBody,
                  //bottomBar(),
                ],
              );
            }
          },
        ),
      ),
=======
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
            const SizedBox(height: 50),
            const Text(
              'Your Score',
              style: TextStyle(
                fontSize: 45, // Change the font size here
              ),
            ),
            const SizedBox(height: 30),
            Text(
              '$_score_mainboard',
              style: TextStyle(
                fontSize: 80, // Change the font size here
                fontFamily: 'Oswald', // Change 'YourFontFamily' to the desired font family
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 220),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding around the container
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0), // Add padding for the text inside the container
                decoration: BoxDecoration(
                  color: Colors.lightBlue.shade300, // Set light blue color
                  borderRadius: BorderRadius.circular(15.0), // Add rounded corners
                ),
                child: Text(
                  _ChatBotAdvice,
                  style: TextStyle(
                    fontSize: 20, // Change the font size here
                    color: Colors.white, // Set text color to white for better visibility
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
      floatingActionButton: Transform.scale(
        scale: 1.5, // Adjust the scale factor as needed
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.person, size: 50.0),
          backgroundColor: Colors.blue,
        ),
      ),
>>>>>>> Stashed changes
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }
  Widget bottomBar() {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (int index) {
            if (index == 0 || index == 2) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      Communities();
                });
              });
            } else if (index == 1 || index == 3) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      Communities();
                });
              });
            }
          },
        ),
      ],
    );
  }
}