import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  List toDoList = [
    ['Learn flutter', false],
    ['modda guddu', false],

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: Text('Simple ToDo'
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(itemCount: toDoList.length,itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.deepPurple,
              child: Text(
                toDoList[index][0],

              ),
            ),
          );
        }),
      
    );
  }
}