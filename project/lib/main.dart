
import 'package:flutter/material.dart';
import 'package:application111/Lofi.dart';
import 'package:application111/Settings.dart';
import './DoList.dart';
import 'Account.dart';
import 'Expense.dart';
import 'Goal.dart';
import 'Schedule.dart';
import 'Timer.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

import 'data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'You can',
      theme: ThemeData(primaryColor: Color(0xffB2B1F2)),
      home: _HomepageState(),
    );
  }
}

class _HomepageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('You can'),
        ),
        backgroundColor: Color(0xffCAC9FB),
        endDrawer: new Drawer(
            child: Padding(
                padding: EdgeInsets.only(top: 40, left: 50, right: 50),
                child: ListView(
                  children: <Widget>[
                    new ListTile(
                        title: new Text('To Do List'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new DoList()));
                        }),
                    Divider(
                        color: Color(0xffB2B1F2),
                        //indent:50,
                        //endIndent:50,
                        thickness: 2,
                        height: 30),
                    new ListTile(
                        title: new Text('Schedule'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Schedule()));
                        }),
                    Divider(
                        color: Color(0xffB2B1F2),
                        //indent:50,
                        //endIndent:50,
                        thickness: 2,
                        height: 30),
                    new ListTile(
                        title: new Text('Timer'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Timer()));
                        }),
                    Divider(
                        color: Color(0xffB2B1F2),
                        //indent:50,
                        //endIndent:50,
                        thickness: 2,
                        height: 30),
                    new ListTile(
                        title: new Text('Expense Tracker'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Expense()));
                        }),
                    Divider(
                        color: Color(0xffB2B1F2),
                        //indent:50,
                        //endIndent:50,
                        thickness: 2,
                        height: 30),
                    new ListTile(
                        title: new Text('Goal Tracker'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Goal()));
                        }),
                    Divider(
                        color: Color(0xffB2B1F2),
                        //indent:50,
                        //endIndent:50,
                        thickness: 2,
                        height: 30),
                    new ListTile(
                        title: new Text('Lofi Stream'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Lofi()));
                        }),
                    Divider(
                        color: Color(0xffB2B1F2),
                        //indent:50,
                        //endIndent:50,
                        thickness: 2,
                        height: 30),
                    new ListTile(
                        title: new Text(
                          'Account',
                          style: TextStyle(color: Colors.pink),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Account()));
                        }),
                    Divider(
                        color: Color(0xffB2B1F2),
                        //indent:50,
                        //endIndent:50,
                        thickness: 2,
                        height: 30),
                    new ListTile(
                        title: new Text('Settings'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Settings()));
                        }),
                  ],
                ))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(top:60)  ,),
              Container(
                height: 500,
                child: Swiper(
                  autoplay: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage(images1[index]),
                          fit: BoxFit.cover,
                        ));
                  },
                  viewportFraction: 0.8,
                  scale: 0.9,
                  pagination: SwiperPagination(),

                ),
              )
            ],
          ),
        ));
  }
}
