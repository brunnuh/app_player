
import 'package:appplayer/screens/touchplay.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';


class HomePlay extends StatelessWidget {

  String fileMusic;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF171C2F),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "Welcome to\n AppPlayer",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              child: CircleAvatar(
                child: Icon(Icons.music_note, size: 90, color: Color(0xFFACAFB4),),
                radius: 100,
                backgroundColor: Color(0xFF333747),
              ),
              onTap: () async {
                fileMusic = await FilePicker.getFilePath(type: FileType.audio);
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TouchPlay(music: fileMusic.toString(), cantor:fileMusic.substring(fileMusic.length - 34), nomeMusic: "-------------------------",)));
              },
            ),
            SizedBox(
              height: 50,
            ),
            Icon(Icons.keyboard_arrow_up, color: Color(0xFFACAFB4), size: 40,),
            SizedBox(
              height: 20,
            ),
             Container(
               margin: EdgeInsets.all(20),
               child: Text(
                 "Tap on the button and ask for your favourite music",
                 style: TextStyle(
                     color: Colors.white,
                     fontSize: 20
                 ),
                 textAlign: TextAlign.center,
               ),
             )
          ],
        ),
      ),

    );
  }
}
