import 'package:flutter/material.dart';

class Goal extends StatefulWidget{
  @override 
  GoalPageState createState()=>new GoalPageState();
  }

class GoalPageState extends State<Goal>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
      title:new Text('Goal Tracker')
      ) 
    );
  }
}