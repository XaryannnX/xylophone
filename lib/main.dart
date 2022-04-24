import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: FlatButton(
                  color:Colors.red,
                  onPressed: (){
                    playSound(1);
                },
             ),
              ),
              Expanded(
                child: FlatButton(
                  color:Colors.blue,
                  onPressed: (){
                    playSound(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color:Colors.green,
                  onPressed: (){
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color:Colors.pink,
                  onPressed: (){
                    playSound(4);
                  },
                ),
              ),
                Expanded(
                child: FlatButton(
                  color:Colors.grey,
                  onPressed: (){
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color:Colors.blue[900],
                  onPressed: (){
                    playSound(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color:Colors.orangeAccent,
                  onPressed: (){
                    playSound(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
