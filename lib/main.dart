import 'package:bad_jokes_app/answer.dart';
import 'package:bad_jokes_app/button.dart';
import 'package:bad_jokes_app/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  final _jokes = [
    {"question": "What is the capital of Australia?", "answer": "Canberra"},
    {"question": "Which planet is closest to the Sun?", "answer": "Mercury"},
    {"question": "Who painted the Mona Lisa?", "answer": "Leonardo da Vinci"},
    {
      "question": "What is the largest ocean in the world?",
      "answer": "Pacific Ocean "
    },
    {
      "question": "Who is the author of the Harry Potter series?",
      "answer": " J.K. Rowling"
    },
    {
      "question": "What is the highest mountain in the world?",
      "answer": " Mount Everest"
    },
    {
      "question": "Which gas makes up most of the Earth's atmosphere?",
      "answer": " Nitrogen"
    },
    {"question": "How many sides does a hexagon have?", "answer": "6"},
    {"question": "What is the chemical symbol for gold?", "answer": " Au"},
    {"question": "In which year did the Titanic sink?", "answer": "1912"},
  ];
  var _jokeIndex = 0;
  changeIndex(String direction) {
    if (direction == "next") {
      if (_jokeIndex != _jokes.length - 1) {
        setState(() {
          _jokeIndex++;
        });
      } else {
        setState(() {
          _jokeIndex = 0;
        });
      }
    } else if (direction == "previous") {
      if (_jokeIndex != 0) {
        setState(() {
          _jokeIndex--;
        });
      } else {
        setState(() {
          _jokeIndex = _jokes.length - 1;
        });
      }
    }
  }

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Question(
                question: _jokes[_jokeIndex]["question"] as String,
              ),
              Answer(
                answer: _jokes[_jokeIndex]["answer"] as String,
              ),
              Button(changeIndex: changeIndex),
            ],
          ),
        ),
      ),
    );
  }
}
