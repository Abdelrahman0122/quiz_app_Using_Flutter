

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => PiValueQuiz(),
        '/second': (context) => NewScreen(),
        '/third': (context)=> Third(),
      }));
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
                            if(isChecked1) {
                              isChecked2 = false;
                              isChecked3 = false;
                            }
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.blue,
                        checkColor: Colors.white,
                        tileColor: isChecked1 ? Colors.grey : null,
                        enabled: !isChecked1,
                      ),
                      CheckboxListTile(
                          title: Text('3.141'),
                          value: isChecked2,
                          onChanged: (value) {
                            setState(() {
                              isChecked2 = value!;
                              if(isChecked2) {
                                isChecked1 = false;
                                isChecked3 = false;
                              }
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: Colors.blue,
                          checkColor: Colors.white,
                          tileColor: isChecked2 ? Colors.grey : null,

                          enabled: !isChecked2),
                      CheckboxListTile(
                        title: Text('3.1415'),
                        value: isChecked3,
                        onChanged: (value) {
                          setState(() {
                            isChecked3 = value!;
                            if(isChecked3) {
                              isChecked1 = false;
                              isChecked2 = false;
                            }
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.blue,
                        checkColor: Colors.white,
                        tileColor: isChecked3 ? Colors.grey : null,
                        enabled: !isChecked3,
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
class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();


}

class _NewScreenState extends State<NewScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  TextEditingController textEditingController = TextEditingController();

  @override
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
                'Question 2',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'What is the Capital of france?',
                        style: TextStyle(fontSize: 24.0),
                      ),
                      SizedBox(height: 16.0),
                      CheckboxListTile(
                        title: Text('London'),
                        value: isChecked1,
                        onChanged: (value) {
                          setState(() {
                            isChecked1 = value!;
                            if(isChecked1) {
                              isChecked2 = false;
                              isChecked3 = false;
                            }
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.blue,
                        checkColor: Colors.white,
                        tileColor: isChecked1 ? Colors.grey : null,
                        enabled: !isChecked1,
                      ),
                      CheckboxListTile(
                          title: Text('Paris'),
                          value: isChecked2,
                          onChanged: (value) {
                            setState(() {
                              isChecked2 = value!;
                              if(isChecked2) {
                                isChecked1 = false;
                                isChecked3 = false;
                              }
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: Colors.blue,
                          checkColor: Colors.white,
                          tileColor: isChecked2 ? Colors.grey : null,

                          enabled: !isChecked2),
                      CheckboxListTile(
                        title: Text('Cairo'),
                        value: isChecked3,
                        onChanged: (value) {
                          setState(() {
                            isChecked3 = value!;
                            if(isChecked3) {
                              isChecked1 = false;
                              isChecked2 = false;
                            }
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.blue,
                        checkColor: Colors.white,
                        tileColor: isChecked3 ? Colors.grey : null,
                        enabled: !isChecked3,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
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

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  TextEditingController textEditingController = TextEditingController();
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;


  @override
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
                'Question 3',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'What is the primary language spoken in Brazil?',
                        style: TextStyle(fontSize: 24.0),
                      ),
                      SizedBox(height: 16.0),
                      CheckboxListTile(
                        title: Text('English'),
                        value: isChecked1,
                        onChanged: (value) {
                          setState(() {
                            isChecked1 = value!;
                            if(isChecked1) {
                              isChecked2 = false;
                              isChecked3 = false;
                            }
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.blue,
                        checkColor: Colors.white,
                        tileColor: isChecked1 ? Colors.grey : null,
                        enabled: !isChecked1,
                      ),
                      CheckboxListTile(
                          title: Text('Arabic'),
                          value: isChecked2,
                          onChanged: (value) {
                            setState(() {
                              isChecked2 = value!;
                              if(isChecked2) {
                                isChecked1 = false;
                                isChecked3 = false;
                              }
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: Colors.blue,
                          checkColor: Colors.white,
                          tileColor: isChecked2 ? Colors.grey : null,

                          enabled: !isChecked2),
                      CheckboxListTile(
                        title: Text('Porteguse'),
                        value: isChecked3,
                        onChanged: (value) {
                          setState(() {
                            isChecked3 = value!;
                            if(isChecked3) {
                              isChecked1 = false;
                              isChecked2 = false;
                            }
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.blue,
                        checkColor: Colors.white,
                        tileColor: isChecked3 ? Colors.grey : null,
                        enabled: !isChecked3,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
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