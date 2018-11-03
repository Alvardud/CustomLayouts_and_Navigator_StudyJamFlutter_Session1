import 'package:flutter/material.dart';

class Chat extends StatelessWidget{

  String _titulo;

  Chat(String t){
    _titulo=t;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _titulo,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          title:Text(_titulo,style: TextStyle(color: Colors.white),),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.videocam), onPressed: (){print('videocam pressed');}),
            IconButton(icon: Icon(Icons.call), onPressed: (){print('call presed');}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: (){print('more pressed');}),
          ],
        ),
        body: Container(),
      ),
    );
  }
}