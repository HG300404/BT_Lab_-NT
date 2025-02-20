import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('I am RICH', style: TextStyle(fontFamily: 'Arial', fontWeight: FontWeight.bold),),
        ),
        body: const Center(
          child: Image(image: AssetImage('assets/images/diamond.png')),
        ),
      )
    );
  }
}
