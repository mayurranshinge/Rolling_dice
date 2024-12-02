import 'dart:math';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 1;
  var rightDices = 2;

  void changeDiceFace(){
    leftDice = Random().nextInt(6)+1;
    rightDices = Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeDiceFace();
                    });
                  }, child: Image.asset('images/dice$leftDice.png'),),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                  onPressed: (){
                    setState(() {
                      changeDiceFace();
                    });
                  },
                  child: Image.asset('images/dice$rightDices.png'),),
            ),
          ),
        ],
      ),
    );
  }
}
