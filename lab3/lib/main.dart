import 'package:flutter/material.dart';
import 'package:lab3/components/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(Colors.purple, Colors.deepPurple),
      ),
    );
  }
}

