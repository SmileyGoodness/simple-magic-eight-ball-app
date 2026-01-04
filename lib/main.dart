import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: Center(child: Text('Magic 8 Ball')),
        backgroundColor: Colors.grey.shade700,
      ),
      body: EightBall(),
    ),
  ),
);

class EightBall extends StatefulWidget {
  const EightBall({super.key});

  @override
  State<EightBall> createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ballNumber = 1;
  void changeEightBallFace() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            changeEightBallFace();
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
