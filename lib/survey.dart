import 'package:flutter/material.dart';

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
  final _textgreatful = TextEditingController();
  final _textlaugh = TextEditingController();



  @override
  void dispose() {
    _textgreatful.dispose(); // Don't forget to dispose the controller when not needed
    _textlaugh.dispose(); // Don't forget to dispose the controller when not needed
    super.dispose();
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
          ElevatedButton(
              onPressed: () {
                print('Answer: ${_textgreatful.text}');
              },
              child: Text('Submit')
          ),
          Text('What made you laugh today'),
          TextField(
            controller: _textlaugh,
          ),
          ElevatedButton(
              onPressed: () {
                print('Answer: ${_textlaugh.text}');
              },
              child: Text('Submit')
          ),
        ],
      ),
    );
  }


}