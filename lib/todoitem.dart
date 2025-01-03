import 'package:flutter/material.dart';

  /*class MyWidget extends StatefulWidget {
  String taskname;
  bool done;
  
  Function(bool?)? onChanged;

  const MyWidget({required this.taskname, required this.done, required this.onChanged});

*/
class MyWidget extends StatelessWidget {


String taskname;
  bool done;
  
  Function(bool?)? onChanged;

  const MyWidget({required this .taskname,  required this.done, required this.onChanged});


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Tasks"),
                Checkbox(
                  value: done,
                  onChanged:onChanged ,
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ));
  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
  
  }

