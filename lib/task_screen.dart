import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todo_task_app/pages/done_task.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  String taskNumber = '';

  final myController = TextEditingController();

  List<String> text = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,
      height: 1000.0,
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Today Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            style: TextStyle(
              color: Colors.blue,
            ),
            autofocus: true,
            textAlign: TextAlign.center,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Task to be done',
            ),
            keyboardType: TextInputType.text,
            controller: myController,
            onChanged: (value) {
              text = value as List<String>;

              setState(() {
                if (myController.text.length == 0) {
                  text.add(myController.text);
                }
                // else {
                //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //     content: Text("Text is empty"),
                //   ));
                // }
              });
            },
            onSubmitted: (String value) {
              print(value);
              text.add(value);
              //myController.clear();
            },
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoneTask(myController.text),
                ),
              );
            },
            child: Text(
              'Now Add',
            ),
            style: ButtonStyle(),
          ),
          // Text(text.isNotEmpty ? text.toString() : ""),
        ],
      ),
    );
  }
}
