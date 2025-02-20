import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: BallPage(),
    )
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Ask My Anything'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  
  void updateImage(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: updateImage, 
          child: Image.asset('assets/images/ball$ballNumber.png')),
    );
  }
}

