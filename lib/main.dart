import 'package:flutter/material.dart';
import 'Quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Quiz_brain quiz = Quiz_brain();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Icon> myList = [];
  int count = 0;

  void showAlert() {
    Alert(
        context: context,
        title: "RFLUTTER",
        desc:
        "You finished the quiz with score $count out of 6, AWESOME!.")
        .show();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: (80.0),
              ),
              Text(
                quiz.getQuestion(),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: (45.0),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    bool test = quiz.getStatus();
                    if (test == true) {
                      if (quiz.getBool() == true) {
                        myList.add(
                          const Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        );
                        count++;
                      } else {
                        myList.add(
                          const Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        );
                      }
                      quiz.nextQuestion();
                    }
                    else {
                      showAlert();
                    }
                  });
                },
                child: const Text(
                  'True',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                padding: const EdgeInsets.all(12.0),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    bool test = quiz.getStatus();
                    if (test == true) {
                      if (quiz.getBool() == false) {
                        myList.add(
                          const Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        );
                        count++;
                      } else {
                        myList.add(
                          const Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        );
                      }
                      quiz.nextQuestion();
                    }
                    else {
                      showAlert();
                    }
                  });
                },
                child: const Text(
                  'False',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                padding: const EdgeInsets.all(12.0),
              ),
              Row(
                children: myList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
