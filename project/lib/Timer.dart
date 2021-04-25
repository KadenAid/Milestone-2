import 'package:flutter/material.dart';

class Timer extends StatefulWidget{
  @override 
  TimerPageState createState()=>new TimerPageState();
  }

class TimerPageState extends State<Timer>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
      title:new Text('Timer')
      ) 
    );
  }
}