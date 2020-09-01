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

class _EightBallState extends State<EightBall> {
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
          child: Image.asset('images/ball1.png'),
        ),
      ),
    );
  }
}
