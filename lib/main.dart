import 'package:custom_layouts/Chat.dart';
import 'package:flutter/material.dart';

void main()=> runApp(LayoutPrincipal());

//metodos
/*
class Contacto extends StatelessWidget{

  String _mensaje='';
  String _emisor='';
  String _horaDeLlegada='';

  @override

  Contacto(String m, String e, String h){
    _mensaje=m;
    _emisor=e;
    _horaDeLlegada=h;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(top: 15.0,bottom: 3.5,left: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 200.0,
                child: Text(_emisor,style: TextStyle(color:Colors.black,fontSize: 20.0),),),
              Text(_horaDeLlegada,style: TextStyle(color:Colors.black54),),
            ],
          ),
          Container(
            width: 260.0,
            child:Text(_mensaje,style: TextStyle(color: Colors.black54),textAlign: TextAlign.left,),
          ),
        ],
      ),
    );
  }
}

class elementoLista extends StatelessWidget{

  String _mensaje='';
  String _emisor='';
  String _horaDeLlegada='';
  Color _colorImagen;
  Widget _chat;

  @override

  elementoLista(String m, String e, String h, Color c){
    _mensaje=m;
    _emisor=e;
    _horaDeLlegada=h;
    _colorImagen=c;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height:65.0,
        width: 300.0,
        child: InkWell(
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top:5.0,bottom: 5.0),
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color:_colorImagen,
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              Contacto(_mensaje,_emisor,_horaDeLlegada),
            ],
          ),
          onTap: (){
            _chat= new Chat(_emisor);
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> _chat,
            ));
          },
        ),
    );
  }
}
*/

class ContenedorPrincipal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
      child: ListView(
        children: <Widget>[
          /*elementoLista("Hola","Roman","11:00 AM",Colors.cyanAccent),
          elementoLista("Estoy en el study jam","John","10:45 AM",Colors.deepOrange),
          elementoLista(":D","Ariel","10:00 AM",Colors.deepPurple),
          elementoLista("Buenos dias","Mama","08:00 AM",Colors.lightGreenAccent),
          elementoLista("Tengo Sueño","Crush","11:00 PM",Colors.blueGrey)*/


        ],
      ),
    );
  }
}

class Layout extends StatefulWidget{
  @override
  _tabState createState()=>_tabState();
}

class _tabState extends State<Layout>with SingleTickerProviderStateMixin{
  @override
  TabController _controller;

  void initState(){
    _controller = new TabController(length: 3,vsync: this);
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white,)),
          IconButton(icon: Icon(Icons.more_vert, color: Colors.white,))
        ],
        bottom: TabBar(controller: _controller,tabs: <Widget>[
          Tab(child: Text('CHATS',style: TextStyle(color: Colors.white),),),
          Tab(child: Text('STATUS',style: TextStyle(color: Colors.white),),),
          Tab(child: Text('CALLS',style: TextStyle(color: Colors.white),),)
        ]),
      ),
      body: ContenedorPrincipal(),
    );
  }
}

class LayoutPrincipal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Layouts',
      home: Layout(),
    );
  }
}