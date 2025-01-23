import 'package:flutter/material.dart';
import '../utils/todo_list.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ['Learn flutter', false],
    ['Learn Data Structures', false],
    ['Learn React', false],
  ];

  void handleToDoChange(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: Text('Simple ToDo'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      
      body: ListView.builder(
        itemCount: toDoList.length,
      
        itemBuilder: (BuildContext context, index) {
          return TodoList(
            taskName: toDoList[index][0],
            isCompleted: toDoList[index][1],
            onChanged: (value) => handleToDoChange(value, index),
          );
       },
      ),

      floatingActionButton: Row(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add a new toDo item",
                filled: true,
                fillColor: Colors.deepPurple.shade200,

                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(14), 
                  
                )
              ),
            )
            ),

        ),
        FloatingActionButton(onPressed:(){},
        child: Icon(Icons.add),
        )
      ],)
    );
  }
}