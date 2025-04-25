import 'package:flutter/material.dart';
import 'package:lab6/screens/question_screen.dart';
import 'package:lab6/screens/result_screen.dart';
import 'package:lab6/screens/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quiz(),
    );
  }
}

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];
  int score = 0;

  // Câu hỏi
  final questions = [
    {'question': 'Flutter is developed by Google?', 'answer': 'true'},
    {'question': 'Dart is a programming language used by Flutter?', 'answer': 'true'},
    {'question': 'React is used by Flutter?', 'answer': 'false'}
  ];

  // Chuyển màn hình
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  // Chọn câu trả lời
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
        score = calculateScore();
      });
    }
  }

  // Tính điểm
  int calculateScore() {
    int score = 0;
    for (int i = 0; i < selectedAnswers.length; i++) {
      if (selectedAnswers[i] == questions[i]['answer']) {
        score++;
      }
    }
    return score;
  }

  // Khởi động lại quiz
  void restartQuiz() {
    setState(() {
      activeScreen = 'start-screen';
      score = 0;
      selectedAnswers = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(chooseAnswer, questions);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(score, restartQuiz);
    }

    return Scaffold(
      body: screenWidget,
    );
  }
}
