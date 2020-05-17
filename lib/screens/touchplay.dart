import 'package:appplayer/stores/touchplay_store.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TouchPlay extends StatefulWidget {
  String cantor = "Anonimo";
  String nomeMusic;
  String music;
  bool tocando = true;
  TouchPlay({this.music, this.cantor, this.nomeMusic});

  @override
  _TouchPlayState createState() => _TouchPlayState();
}

class _TouchPlayState extends State<TouchPlay> {

  AudioPlayer _audioPlayer = AudioPlayer();

  TouchplayStore _touchplayStore = TouchplayStore();


  Future<int> play() async {
    return await _audioPlayer.play(widget.music, isLocal: true);
  }

  @override
  void initState() {
    super.initState();
    if(widget.tocando){
      play();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFF171C2F),
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon_music.png"),
                ),
              )
            ),
            Text(
              "${widget.cantor}", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Text(
                "${widget.nomeMusic}", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Observer(
                    builder: (_){
                      return _touchplayStore.sttsButton ? IconButton(
                        icon: Icon(Icons.play_arrow, size: 30, color: Colors.white,),
                        onPressed: () async {

                          if(_touchplayStore.sttsMusic == 1){
                            _touchplayStore.invButton();
                            _touchplayStore.invSttsMusic(await play());

                          }
                        },
                      ) : IconButton(
                        icon: Icon(Icons.pause, size: 30, color: Colors.white,),
                        onPressed: () async {
                          if(_touchplayStore.sttsMusic == 1){
                            _touchplayStore.invButton();
                            _touchplayStore.invSttsMusic(await _audioPlayer.pause());
                          }
                        },
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.stop, size: 30, color: Colors.white,),
                    onPressed: () async {
                      if(_touchplayStore.sttsMusic == 1){
                        _touchplayStore.invSttsMusic(await _audioPlayer.stop());
                        ;
                      }
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () async {
          if(_touchplayStore.sttsMusic == 1){
            _touchplayStore.invSttsMusic(0);
            _audioPlayer.stop();
            widget.music = await FilePicker.getFilePath(type: FileType.audio);
            play();
          }
        },
        child: Icon(
          Icons.music_note,
          color: Color(0xFF171C2F),
        ),
      ),
    );
  }


}
