import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded built({Color color, int x}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$x.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              built(color: Colors.red, x: 1),
              built(color: Colors.orange, x: 2),
              built(color: Colors.yellowAccent, x: 3),
              built(color: Colors.teal, x: 4),
              built(color: Colors.green, x: 5),
              built(color: Colors.blue, x: 6),
              built(color: Colors.pinkAccent, x: 7),
            ],
          )),
        ),
      ),
    );
  }
}
