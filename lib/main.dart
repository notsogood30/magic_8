import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';

void main() => runApp(
      MaterialApp(home: BallPage()),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballno = 1;
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Center(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  '.....CLICK ON THE BUTTON BELOW TO KNOW YOUR ANSWER .....',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            FlatButton(
                onPressed: () {
                  setState(() {
                    ballno = Random().nextInt(4) + 1;
                  });
                },
                child: Image(image: AssetImage('images/ball$ballno.png')))
          ],
        )),
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Text('Ask Me Anything',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0)),
        ),
        body: Ball());
  }
}
