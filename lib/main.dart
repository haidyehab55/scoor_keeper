import 'package:flutter/material.dart';
import 'Quiz_brain.dart';

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
  int track = 0;

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
                quiz.Q[track].question,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: (45.0),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    if (quiz.Q[track].rank == true) {
                      myList.add(
                        const Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      );
                    } else {
                      myList.add(
                        const Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      );
                    }
                  });
                  track++;
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
                    if (quiz.Q[track].rank == false) {
                      myList.add(
                        const Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      );
                    } else {
                      myList.add(
                        const Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      );
                    }
                  });
                  track++;
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
