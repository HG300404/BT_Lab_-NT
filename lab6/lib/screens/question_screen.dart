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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Câu hỏi sẽ tự động xuống dòng nếu cần
        Container(
          width: double.infinity,  // Lấy chiều rộng tối đa của màn hình
          padding: EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Text(
            currentQuestion['question'] ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
            softWrap: true,  // Cho phép tự động xuống dòng
            overflow: TextOverflow.visible,  // Cho phép văn bản xuống dòng nếu quá dài
          ),
        ),
        SizedBox(height: 20),

        // Cố định các button và giữ chúng bằng cách sử dụng `Expanded` để chiếm không gian ngang
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  widget.onSelectAnswer('true');
                  _moveToNextQuestion();
                },
                child: Text('True'),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15)),
                ),
              ),
            ),
            SizedBox(width: 10), // Giữa các button một khoảng cách nhỏ
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  widget.onSelectAnswer('false');
                  _moveToNextQuestion();
                },
                child: Text('False'),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15)),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _moveToNextQuestion() {
    setState(() {
      if (_currentQuestionIndex < widget.questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        // Nếu là câu hỏi cuối, xử lý kết thúc quiz (ví dụ: hiển thị kết quả)
        // Bạn có thể gọi onSelectAnswer với một giá trị cuối cùng nếu cần
      }
    });
  }
}
