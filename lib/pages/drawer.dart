import 'package:flutter/material.dart';
import 'package:todo_task_app/setting/setting.dart';

class Drawler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: ListView(
          children: [
            Icon(
              Icons.home,
              size: 20.0,
              color: Colors.green,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ),
                );
              },
              icon: Icon(
                Icons.settings,
                size: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
