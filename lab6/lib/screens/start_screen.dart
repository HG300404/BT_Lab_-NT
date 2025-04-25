import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;

  const StartScreen(this.startQuiz, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome to Quiz App', style: TextStyle(fontSize: 30, color: Colors.black)),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: startQuiz,
            child: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
