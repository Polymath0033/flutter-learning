import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentRoll = 2;
  void rollDice() {
    // var diceRoll=
    setState(() {
      currentRoll = Random().nextInt(6) + 1;
      //= "assets/images/dice-$diceRoll.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentRoll.png",
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
                padding: const EdgeInsets.only(top: 20)),
            child: const Text("Roll dice"))
      ],
    );
  }
}
