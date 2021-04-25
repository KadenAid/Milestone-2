import 'package:flutter/material.dart';

class Expense extends StatefulWidget{
  @override 
  ExpensePageState createState()=>new ExpensePageState();
  }

class ExpensePageState extends State<Expense>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
      title:new Text('Expense Tracker')
      ) 
    );
  }
}