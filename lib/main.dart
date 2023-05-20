

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => PiValueQuiz(),
        '/second': (context) => SecondPage(),
      } ));
}

class PiValueQuiz extends StatefulWidget {
  @override
  _PiValueQuizState createState() => _PiValueQuizState();
}

class _PiValueQuizState extends State<PiValueQuiz> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 16.0, left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Question 1',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'What is the value of pi?',
                        style: TextStyle(fontSize: 24.0),
                      ),
                      SizedBox(height: 16.0),
                      CheckboxListTile(
                        title: Text('3.14'),
                        value: isChecked1,
                        onChanged: (value) {
                          setState(() {
                            isChecked1 = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('3.141'),
                        value: isChecked2,
                        onChanged: (value) {
                          setState(() {
                            isChecked2 = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('3.1415'),
                        value: isChecked3,
                        onChanged: (value) {
                          setState(() {
                            isChecked3 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

  class _SecondPageState extends State<SecondPage> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 16.0, left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Question 1',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'What is the value of pi?',
                        style: TextStyle(fontSize: 24.0),
                      ),
                      SizedBox(height: 16.0),
                      CheckboxListTile(
                        title: Text('3.14'),
                        value: isChecked1,
                        onChanged: (value) {
                          setState(() {
                            isChecked1 = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('3.141'),
                        value: isChecked2,
                        onChanged: (value) {
                          setState(() {
                            isChecked2 = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('3.1415'),
                        value: isChecked3,
                        onChanged: (value) {
                          setState(() {
                            isChecked3 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

