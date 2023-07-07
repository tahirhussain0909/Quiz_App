import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.answers.map(
            (answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {},
              );
            },
          ),
          // AnswerButton(
          //   answerText: currentQuestion.answers[0],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answerText: currentQuestion.answers[1],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answerText: currentQuestion.answers[2],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answerText: currentQuestion.answers[3],
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }
}
