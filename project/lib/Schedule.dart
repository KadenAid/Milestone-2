import 'package:flutter/material.dart';

class Schedule extends StatefulWidget{
  @override 
  SchedulePageState createState()=>new SchedulePageState();
  }

class SchedulePageState extends State<Schedule>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
      title:new Text('Schedule')
      ) 
    );
  }
}