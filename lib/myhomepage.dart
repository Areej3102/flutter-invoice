import 'package:flutter/material.dart';
import 'package:invoice/todoitem.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller = TextEditingController();
  List tasks = [
    ['first task ', true],
    ['second task ', false]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To Do Task")),
      body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return MyWidget(
              taskname: tasks[index][0],
              done: tasks[index][1],
              onChanged: (p0) => onChanged(p0, index),
            );
          }),
    );
  }

  onChanged(bool? p0, int index) {
    setState(() {
      tasks[index][1] = !tasks[index][1];

    });
  }


  void addnewtask({

    
  })
}
