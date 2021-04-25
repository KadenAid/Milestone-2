
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DoList extends StatefulWidget {
  @override
  DoListPageState createState() => new DoListPageState();
}

class DoListPageState extends State<DoList> {
  
  // ignore: deprecated_member_use
  List todo = List();

  String input = "";

  createtodo(){
  DocumentReference documentReference = 
  FireStore.instance.collection("DoList").document(
     input);
  
 //MAP
 Map<String, String > todo={"todoTitle":input};

 documentReference.setData(todo).whenComplete((){
   print("$input created");
 });
  }

  deletetodo(){

  }

  @override
  void initState() {
    super.initState();
    todo.add("1");
    todo.add("2");
    todo.add("3");
    todo.add("4");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('To Do List')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
    
                return AlertDialog(
                  shape: RoundedRectangleBorder(borderRadius:
                  BorderRadius.circular(8)),
                  title: Text("Add a to-do list"),
                  content: TextField(onChanged: (String value) {
                    input = value;
                  }),
                  actions: <Widget>[
                    // ignore: deprecated_member_use
                    FlatButton(
                        onPressed: () {
                          setState(() {
                            todo.add(input);
                          });Navigator.of(context).pop();
                        },
                        child: Text("Add"))
                  ],
                  
                );
              });
        },child: Icon(Icons.add,
        color:Colors.white,),
      ),
      body: ListView.builder(
          itemCount: todo.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(todo[index]),
              child: Card(
                elevation: 4,
                margin: EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(0)
                ),
                child: ListTile(
                  title: Text(todo[index]),
                  trailing: IconButton (icon: Icon(Icons.delete,color: Colors.red,),
                  onPressed: (){
setState(() {
  todo.removeAt(index);
});
                  },
                ),
              ),),
            );
          }),
    );
  }
}
