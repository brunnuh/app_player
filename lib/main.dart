import 'package:appplayer/screens/homeplay.dart';
import 'package:appplayer/screens/touchplay.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePlay(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            String file = await FilePicker.getFilePath(type: FileType.audio);

            await _audioPlayer.play(file, isLocal: true);

          },
          child: Text("Play"),
        ),
      ),
    );
  }
}
