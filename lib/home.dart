import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tudo/utilities/dialog.dart';
import 'package:tudo/utilities/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller=TextEditingController();

  List toDoList =[
   
  ];

  void checkboxchanges(bool? value,int index)
  {
    setState(() {
      toDoList[index][1]=!toDoList[index][1];
    });
  }
  void savenewtask()
  {
    setState(() {
      toDoList.add([_controller.text,false]);
      _controller.clear();
    });
    Navigator.of(context).pop();

  }
  void createnewtask()
  {
    showDialog(
      context: context,
     builder: (contex) {
      return DialogBOx(
        controller:_controller ,
        onSave:savenewtask ,
        onCancel: () =>Navigator.of(context).pop(),
      );
      

     
      },
      );
     
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('ToDo App'),
        elevation: 1,
      ),
      floatingActionButton:FloatingActionButton(
        onPressed:createnewtask,
        child: Icon(Icons.add),
         ) ,
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
        return ToDoTile(
          taskName: toDoList[index][0],
         taskCompleted: toDoList[index][1],
         onChanged: (value) => checkboxchanges(value,index),
         );
        },
      ),
    );
  }
}