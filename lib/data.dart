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
  static String MyDiary = '-';
}

class GlobalFlags {
  static bool FirstLogin = true;
  static bool DailySurvey = false;
}

class GlobalScores {
  static int FoodScore = 0;
  static int FitnessScore = 0;
  static int MindScore = 0;
  static int PointScore = 0;
}

class NumberOfPoints {
  static int NumberOfPointsSurvey = 10;
}