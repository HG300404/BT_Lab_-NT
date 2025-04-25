import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final int score;
  final void Function() onRestart;

  const ResultsScreen(this.score, this.onRestart, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Your Score: $score', style: TextStyle(fontSize: 30)),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: onRestart,
            child: Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
