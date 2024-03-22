// Data File

class FoodData {
  static double FoodHealthyness_actual = 0;
  static double FoodHealthyness_upper = 0.7;
  static double FoodHealthyness_lower = 0.4;
// Add more global variables as needed
}

class FitnessData {
  static double NumberOfSteps_goal = 10000;
  static double NumberOfSteps_actual = 7000;
  static double NumberOfFloors_goal = 25;
  static double NumberOfFloors_actual = 7000;
  static double HoursOfSleep_goal = 7;
  static double HoursOfSleep_actual = 7000;
// Add more global variables as needed
}

class MindData {
  static double GeneralMindScore_actual = 0;
  static double GeneralMindScore_upper = 0.7;
  static double GeneralMindScore_lower = 0.4;
// Add more global variables as needed
}



class ProfileInformation {
  static String name = 'Livia Fischer';
  static int age = 23;
  static String CountryOfOrigin = 'Switzerland';
  static String Language = 'German';
  static String Location = 'Betrieb Geflügel Zell';
  static List<String> MyDiary = ['', '', '', '', '', '', '', '', '', ''];
}

class GlobalFlags {
  static bool FirstLogin = true;
  static bool DailySurvey = false;
}

class GlobalScores {
  static int FoodScore = 0;
  static int FitnessScore = 0;
  static int MindScore = 0;
  static int ScoreUpperBound = 70;
  static int ScoreLowerBound = 40;
  static int PointScore = 0;
}

class NumberOfPoints {
  static int NumberOfPointsSurvey = 10;
}

class LunchBuddy {
  String name = '';
  String Location = '';
  String Department = '';
  String Language = '';
  double TimeFrom = 0.0;
  double TimeTill = 24.0;

  LunchBuddy({required this.name, required this.Location, required this.Department, required this.Language, required this.TimeFrom, required this.TimeTill});
}

LunchBuddy Steve = LunchBuddy(name: 'Steve', Location: 'Betrieb Geflügel Zell', Department: 'HR', Language: 'German', TimeFrom: 11.5, TimeTill: 13.5);
LunchBuddy Helena = LunchBuddy(name: 'Helena', Location: 'Betrieb Geflügel Zel', Department: 'HR', Language: 'German', TimeFrom: 12.0, TimeTill: 13.5);
LunchBuddy Peter = LunchBuddy(name: 'Peter', Location: 'Betrieb Seafood Basel', Department: 'HR', Language: 'German', TimeFrom: 11.0, TimeTill: 14.0);
LunchBuddy Laura = LunchBuddy(name: 'Laura', Location: 'Betrieb Geflügel Zel', Department: 'Production', Language: 'German', TimeFrom: 13.0, TimeTill: 14.0);


class ChatBotAnswers {
  static List<String> MoreFitness =
  ['Your targeted distance is nearly achieved! Keep going!',
    'You would really benefit from improving your health. How about a quick walk outside.',
    'Let us get some fresh air and have a walk outside',
    'Have you considered doing a small workout at home? It helps to reduce stress!'];
  static List<String> MoreHealthyFood =
  ['You are doing great! How about some fruits in you next break?',
    'What is you favourite fruit? Well it does not matter, they are all healthy!'];
  static List<String> MoreMindfulness =
  ['Let us visit a park, there is are alwayss something new to discover',
    'Check out the company events, maybe you find something interesting.',
    'Do you want to meet a new lunch buddy? We got the solution to your problem!'];
  static List<String> EverythingFine =
  ['Wow, you are doing really well. Keep on going!',
    'Everything Fine, just keep going!',
    'A beautiful day for being happy and healthy'];
  static int FitnessIndex = 0;
  static int FoodIndex = 0;
  static int MindfulIndex = 0;
  static int FineIndex = 0;
}