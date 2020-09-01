import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: EightBall(),
      ),
    );

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

///  The EightBall Page that is displayed in the application.
///  It displays an 8-ball that changes the response at every click.
class _EightBallState extends State<EightBall> {
  // Object of Random class to generate random numbers for our 8-ball.
  Random _randomGenerator = Random();
  // Holds a number in 1-5, this variable stores the 8-ball image being shown.
  int _ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.blue[800],
      ),
      body: Container(
        child: Center(
          child: FlatButton(
            child: Image.asset('images/ball$_ballNumber.png'),
            onPressed: () {
              setState(() {
                // Here we generate a random number from 0-4 using nextInt
                // and add 1 to make it in the range of 1-5. Updating the
                // variable with the new number updates the ball being shown.
                _ballNumber = _randomGenerator.nextInt(5) + 1;
              });
            },
          ),
        ),
      ),
    );
  }
}
