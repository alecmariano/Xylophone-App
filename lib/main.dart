import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playNote (int note){
    final player  = AudioCache();
    player.play('note$note.wav');
  }

  Widget buildKey(int noteNumber, Color noteColor){
    return Expanded(
      child: FlatButton(onPressed: (){
        playNote(noteNumber);
      }, color: noteColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.deepOrangeAccent),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.blue),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.green),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
