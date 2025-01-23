import 'package:flutter/material.dart';

class TodoList extends StatelessWidget{

    const TodoList({super.key, 
    required this.taskName, 
    required this.isCompleted, 
    required this.onChanged,
    });

    final String taskName;
    final bool isCompleted;
    final ValueChanged<bool?> onChanged;

    @override
    Widget build(BuildContext context){
        return Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20, bottom: 0),
            
            child: Container(
        
                padding: EdgeInsets.all(20),
                color: Colors.deepPurple,
                
                
                child: Row(
                    children: [ 
                        
                        Checkbox(value: isCompleted,
                        onChanged: onChanged, 
                        checkColor: Colors.black,
                        activeColor: Colors.white,
                        side: BorderSide(color: Colors.white)
                            ,), //state and set state for checkbox
                        Text(taskName,
                        style:  TextStyle (
                            color: Colors.white,
                            fontSize: 16,
                            decoration: isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                        )),
                    ],
                ),
            )
        );
    }
}