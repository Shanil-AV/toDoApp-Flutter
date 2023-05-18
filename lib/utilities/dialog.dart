import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tudo/utilities/button.dart';

class DialogBOx extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
   DialogBOx({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave
    });
 
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add new task",
    
            ),
          ),
          Row(children: [
            MyButton(text: "save",onPressed: onSave
              
           ),
             const SizedBox(width: 10,),
             MyButton(text: "cancel",onPressed: onCancel
              
            ),
          ],
            
          )
        ],)

        
      ),


    );
  }
}