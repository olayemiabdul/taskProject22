import 'dart:html' as html; //for linking to an external website

import 'package:flutter/material.dart';
import 'package:todo_task_app/pages/task_brain.dart';

class TaskTile extends StatefulWidget {
  final bool checkBoxState;

  TaskTile(this.checkBoxState);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  int length = 0;
  int read = 0;
  int drink = 0;
  int call = 0;
  int cash = 10;
  int coding = 1;
  int study = 1;
  bool isChecked = false;
  bool uChecked = false;
  bool eChecked = false;
  bool kChecked = false;
  bool lChecked = false;
  bool nChecked = false;
  int bmiResult = 1;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: ListTile(
            selectedTileColor: Colors.green,
            title: Text('READ BOOK ONLINE'),
            trailing: Checkbox(
                value: isChecked,
                onChanged: (bool? newValue) {
                  setState(
                    () {
                      isChecked = newValue!;
                      if (isChecked == true) {
                        read++;
                        // print(read);
                      }
                    },
                  );
                }),
            leading: IconButton(
              icon: Icon(
                Icons.book_online,
                size: 16.0,
                color: Colors.deepPurpleAccent,
              ),
              onPressed: () {
                //onclick should leads to a webpage to read book online
                html.window.open('https://www.fluttercampus.com', "_blank");
              },
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Slider(
            value: length.toDouble(),
            min: 0.0,
            max: 6.0,
            activeColor: Colors.blue,
            inactiveColor: Colors.red,
            onChanged: (double newValue) {
              setState(() {
                length = newValue.toInt();
              });
            }),
        Card(
          child: ListTile(
            leading: IconButton(
              icon: Icon(
                Icons.water_sharp,
              ),
              onPressed: () {},
            ),
            title: Text(
              'Ten litre of water is what you must filled today',
              style: TextStyle(
                fontFamily: 'Varela Round',
                fontSize: 12.0,
              ),
            ),
            trailing: Checkbox(
                value: uChecked,
                onChanged: (bool? newValue) {
                  setState(
                    () {
                      uChecked = newValue!;
                      if (uChecked == true) {
                        drink++;
                        // print(drink);
                      }
                    },
                  );
                }),
          ),
        ),
        Card(
          child: ListTile(
            title: Text(
              'Call Wifey @noon',
              style: TextStyle(
                fontFamily: 'Varela Round',
                fontSize: 12.0,
              ),
            ),
            leading: Icon(
              Icons.call,
              color: Colors.green,
              size: 12.0,
            ),
            trailing: Checkbox(
                value: eChecked,
                onChanged: (bool? newValue) {
                  setState(
                    () {
                      eChecked = newValue!;
                      if (eChecked == true) {
                        call++;
                        // print(call);
                      }
                    },
                  );
                }),
          ),
        ),
        Card(
          child: ListTile(
            leading: Image(
              image: AssetImage('images/businessman.jpg'),
            ),
            title: Text('Business Done for the day'),
            trailing: Checkbox(
                value: kChecked,
                onChanged: (bool? newValue) {
                  setState(
                    () {
                      kChecked = newValue!;
                      if (kChecked == true) {
                        cash++;
                        // print(cash);
                      }
                    },
                  );
                }),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(size: 56.0),
            title: Text('Flutter Coding'),
            subtitle: Text('Here is your major task for the day'),
            trailing: Checkbox(
                value: lChecked,
                onChanged: (bool? newValue) {
                  setState(
                    () {
                      lChecked = newValue!;
                      if (lChecked == true) {
                        coding++;
                        // print(coding);
                      }
                    },
                  );
                }),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.star_purple500,
              size: 12.0,
            ),
            isThreeLine: true,
            title: Text('learning'),
            subtitle: Text('To earn more is to learn more'),
            trailing: Checkbox(
                value: nChecked,
                onChanged: (bool? newValue) {
                  setState(
                    () {
                      nChecked = newValue!;
                      if (nChecked == true) {
                        study++;
                        // print(study);
                      }
                    },
                  );
                }),
          ),
        ),
        TextButton(
          onPressed: () {
            TaskBrain abdulBrain =
                TaskBrain(coding, cash, call, drink, read, length, study);
            bmiResult = abdulBrain.calculateTaskDone() as int;
            print(bmiResult);
          },
          child: Text(
            'Check',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}
