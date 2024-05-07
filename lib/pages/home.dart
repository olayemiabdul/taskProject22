import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:todo_task_app/pages/drawer.dart';
import 'package:todo_task_app/pages/task_list.dart';
import 'package:todo_task_app/setting/setting.dart';
import 'package:todo_task_app/task_screen.dart';

class HomePage extends StatelessWidget {
  Widget bottomSheet(BuildContext context) => TaskScreen();

  // adding share button to the app
  final String content = ' Share App';
  void shareContent() {
    Share.share(content);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.green,
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Drawler(),
              ),
            );
          },
        ),
        title: Center(
          child: Text(
            'ToDo',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico-Regular',
            ),
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                // row with 2 children
                child: Row(
                  children: [
                    Icon(Icons.home),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Get The App")
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
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
                        color: Colors.white,
                      ),
                    ),
                    Text('settings'),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: shareContent,
                      icon: Icon(Icons.share),
                    ),
                    Text('share'),
                  ],
                ),
              ),
            ],
          ),
          Icon(Icons.search),
        ],
      ),
      backgroundColor: Colors.blueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => SingleChildScrollView(
              child: TaskScreen(),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        padding:
            EdgeInsets.only(top: 60.0, bottom: 30.0, right: 30.0, left: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.lightGreen,
              radius: 30.0,
              backgroundImage: AssetImage('images/Naady.jpg'),
            ),
            Divider(
              height: 20.0,
            ),
            Text(
              'Hello, Abdullahi Ola',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'This is your to do list',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'you have 3 task today',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontFamily: 'SourceSansPro-BlackItalic.ttf',
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: TaskTile(false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
