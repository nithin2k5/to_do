import 'package:flutter/material.dart';

class TodoList extends StatelessWidget{

    const TodoList({super.key, required this.taskName, required this.isCompleted, required this.onChanged,});

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
                        Checkbox(value: isCompleted, onChanged: onChanged),
                        Text(taskName,
                        style: const TextStyle (
                            color: Colors.white,
                            fontSize: 16,
                        )),
                    ],
                ),
            )
        );
    }
}