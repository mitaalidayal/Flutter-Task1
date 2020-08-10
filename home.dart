import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

AudioPlayer audioPlayer = AudioPlayer();

var a = AudioCache();

play() {
  a.play('BTS_ineedyougirl.mp3');
  }

pause(){
  audioPlayer.pause();
}

stop(){
  audioPlayer.stop();
}


var mymusic = Icon(
  Icons.music_note,
  color: Colors.white,
  );

var myhome= Scaffold(
    
    appBar: AppBar(
      leading: Icon(Icons.menu),
      title: 
      Text(
        'My Music Player',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle:FontStyle.italic, 
        ),
      ),

      actions: <Widget>[
        IconButton(
        icon: mymusic,
        onPressed: null,
        )
      ],
    backgroundColor: Colors.teal.shade500,
  ),

  body: 
  Center( 
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
        children:<Widget>[
          Card(        
          color: Colors.purple,
          child: Image.asset('BTS.jpg'),
          ),
          
          Container(
            padding:EdgeInsets.only(top:300),
            alignment: Alignment.topCenter,
            child:
            Text(" 'I Need You Girl' by BTS",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
              ),
            ),
            
          ),
        ]
      ),
    
      Container(
        child: Card(
        elevation: 5,
        child: Row(        
          mainAxisAlignment: MainAxisAlignment.center,        
            children: <Widget>[        
               
             const RaisedButton(
             color: Colors.teal,
             onPressed: play, 
             child: Icon(
               Icons.play_arrow, 
               size: 25,
              ),
            ),
  
             const RaisedButton(
             color: Colors.teal,
             onPressed: pause,
             child: Icon(
               Icons.pause, 
               size: 25, 
              ),
            ),
   
             const RaisedButton(
             color: Colors.teal,
             onPressed: stop,
             child: Icon(
               Icons.stop, 
               size: 25,
              ), 
            )
            ]
          )
        )
      )
      ]
    )
  )
);
          
 
              
  
MusicApp(){
  
  return MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
}
