import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:todo_task_app/pages/home.dart';
import 'package:todo_task_app/setting/headerPage.dart';

void main() {
  initSettings().then((_) {
    runApp(abdulApp());
  });
}

Future<void> initSettings() async {
  await Settings.init(
      //cacheProvider: _isUsingHive ? HiveCache() : SharePreferenceCache(),
      );
  var accentColor = ValueNotifier(Colors.blueAccent);
}

class HiveCache {}

bool _isDarkTheme = true;
bool _isUsingHive = true;

class abdulApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Settings.getValue<bool>(HeaderPage().keyDarkMode, );
    return ValueChangeObserver<bool>(
      //to obsverve if the state change

      cacheKey: HeaderPage().keyDarkMode,
      defaultValue: true,

      builder: (_, isDarkMode, __) => MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.green,
        title: 'My project Task App',
        home: HomePage(),
        theme: isDarkMode
            ? ThemeData.dark().copyWith(
                primaryColor: Colors.teal,
                //accentColor: Colors.white,
                scaffoldBackgroundColor: Color(0xFF170635),
                canvasColor: Color(0xFF170635),
              )
            : ThemeData.light().copyWith(
                //accentColor: Colors.black,
              ),
      ),
    );
  }
}
