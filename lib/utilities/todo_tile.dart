import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)?onChanged;
 ToDoTile({super.key,required this.taskName,
 required this.taskCompleted,
 required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      
        child: Container(
          padding: EdgeInsets.all(25),
          child:Row(
          children:[
          Checkbox(value: taskCompleted, onChanged: onChanged),
          Text(taskName),
         ]
          ),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(14),
          ),
        ),
     
    );
  }
}