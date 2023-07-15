import 'package:flutter/material.dart';

// import 'package:first_project/styled_text.dart';
import 'package:first_project/dice_roller.dart';
const startAlignement = Alignment.topLeft;
const endAlignement = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;
  GradientContainer.gradient({super.key})
      : colors = [Colors.blue, Colors.blueGrey];


  void rollDice() {
    print("hello");
  }


  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: startAlignement,
            end: endAlignement,
          ),
        ),
        child: const Center(
           child:  DiceRoller()
        ));
  }
}
