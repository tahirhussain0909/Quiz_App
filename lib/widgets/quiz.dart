import 'package:flutter/material.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/screens/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }
  // Widget? activeScreen;
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionScreen();
  //   });
  // }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionScreen();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 66, 0, 141),
              Color.fromARGB(255, 45, 7, 111),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
          //activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionScreen(),
        ),
      ),
    );
  }
}
