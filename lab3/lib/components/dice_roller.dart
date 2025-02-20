import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  final randomizer = Random();
  var random = 1;

  void rollDice(){
    setState(() {
      random = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/dice-$random.png', width: 150),
        const SizedBox(height: 20,),
        TextButton(
          onPressed: rollDice, child: const Text('Start'),
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28
            )
          ),
        )


      ],
    );
  }
}
