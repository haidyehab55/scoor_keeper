import 'package:flutter/material.dart';
import 'Questions.dart';

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
  List<Questions> myQ = [
    Questions(q: 'Blood of human is green', r: true),
    Questions(q: 'There are just 2 kinds of people', r: false),
    Questions(q: 'person can have 2 noses', r: true),
  ];
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
                myQ[track].question,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: (60.0),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    if (myQ[track].rank == true) {
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
                    if (myQ[track].rank == false) {
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
