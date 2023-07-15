import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImageDice = "assets/images/dice-1.png";
  var randomNumber = 1;

  void rollDice() {
    setState(() {
      randomNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Face $randomNumber",
          style: const TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        Image.asset(
          "assets/images/dice-$randomNumber.png",
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(20),
              foregroundColor: Colors.white,
              backgroundColor: Colors.green,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll dice'),
        ),
      ],
    );
  }
}
