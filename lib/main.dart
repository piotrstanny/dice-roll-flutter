import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF03A9F4),
        appBar: AppBar(
          title: Text('Dicee Roll Game'),
          backgroundColor: Color(0xFF0288D1),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNo = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDiceNo.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('right pressssseed!!!');
              },
              child: Image.asset('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
