import 'package:flutter/material.dart';

class Lofi extends StatefulWidget{
  @override 
  LofiPageState createState()=>new LofiPageState();
  }

class LofiPageState extends State<Lofi>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
      title:new Text('Lofi Stream')
      ) 
    );
  }
}

