import 'package:flutter/material.dart';
class GradientContainer extends StatelessWidget {

  const GradientContainer({super.key});
  @override
  Widget build(context){
      return  Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 8, 23, 90),
                Color.fromARGB(255, 71, 0, 88)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              'Hello guys im working on flutter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
              ),
            ),
          ),
        );
  }
}