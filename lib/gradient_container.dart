import 'package:flutter/material.dart';
// import 'package:first_project/styled_text.dart';

const startAlignement = Alignment.topLeft;
const endAlignement = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;
  GradientContainer.gradient({super.key})
      : colors = [Colors.blue, Colors.blueGrey];

  void rollDice() {}

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
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/dice-1.png",
                width: 200,
              ),
               TextButton(onPressed: rollDice, 
               child: const Text("roll dice",style: TextStyle(color: Colors.amber)),)

            ],
          ),
        ));
  }
}
