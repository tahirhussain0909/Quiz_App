import 'package:flutter/material.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/screens/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 57, 12, 136),
            Color.fromARGB(255, 183, 58, 183)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: activeScreen,
      )),
    );
  }
}
