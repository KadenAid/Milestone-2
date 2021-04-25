import 'package:flutter/material.dart';

class Settings extends StatefulWidget{
  @override 
  SettingsPageState createState()=>new SettingsPageState();
  }

class SettingsPageState extends State<Settings>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
      title:new Text('Settings')
      ) 
    );
  }
}