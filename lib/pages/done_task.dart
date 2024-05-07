import 'package:flutter/material.dart';

class DoneTask extends StatelessWidget {
  String text;
  DoneTask(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Text(text),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('WELDONE SIR'),
          ),
        ],
      ),
    );
  }
}
