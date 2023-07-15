import 'dart:ffi';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImageDice = "assets/images/dice-1.png";
  var diceFace = "";
  void rollDice() {
    setState(() {
      if (activeImageDice == "assets/images/dice-1.png") {
        diceFace = "Face 1";
        activeImageDice = "assets/images/dice-2.png";
      } else {
        diceFace = "Face 2";
        activeImageDice = "assets/images/dice-1.png";
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(diceFace,
        style: const TextStyle(
          fontSize: 28,
          color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        Image.asset(
          activeImageDice,
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
