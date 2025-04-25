import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  final void Function(String) onSelectAnswer;
  final List<Map<String, String>> questions;

  const QuestionScreen(this.onSelectAnswer, this.questions, {Key? key}) : super(key: key);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int _currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final currentQuestion = widget.questions[_currentQuestionIndex];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          currentQuestion['question'] ?? '',
          style: TextStyle(fontSize: 24),
        ),
        ElevatedButton(
          onPressed: () {
            widget.onSelectAnswer('true');
            _moveToNextQuestion();
          },
          child: Text('True'),
        ),
        ElevatedButton(
          onPressed: () {
            widget.onSelectAnswer('false');
            _moveToNextQuestion();
          },
          child: Text('False'),
        ),
      ],
    );
  }

  void _moveToNextQuestion() {
    setState(() {
      if (_currentQuestionIndex < widget.questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        // If it's the last question, handle quiz completion (e.g., show results)
        // You can call onSelectAnswer with a final value if needed
      }
    });
  }
}
