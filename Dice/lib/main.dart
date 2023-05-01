import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xff6def8e),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Dicee',
          ),
        ),
        backgroundColor: Color(0xff3e423f),
      ),
      body: DicePage(),
    )),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset(
                'images/dices$leftDiceNumber.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset(
                'images/dices$rightDiceNumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
