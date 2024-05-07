import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:todo_task_app/setting/iconwidget.dart';

class HeaderPage extends StatelessWidget {
  final keyDarkMode = 'key-dark-mode';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildHeader(),
        SizedBox(
          height: 32.0,
        ),
        buildUser(),
        buildDarkMode(),
      ],
    );
  }
}

buildHeader() => Center(
      child: Text(
        'Settings',
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: 'VeralaRound-Regular.ttf',
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.justify,
      ),
    );

buildUser() {
  return SimpleSettingsTile(
    title: 'Olayemi Abdullahi',
    subtitle: '08055579585',
    leading: CircleAvatar(
      backgroundImage: AssetImage('images/Naady.jpg'),
      backgroundColor: Colors.blue,
      radius: 50.0,
    ),
    child: SettingsScreen(
      children: [],
    ),
  );
}

buildDarkMode() {
  final keyDarkMode = 'key-dark-mode';
  return SwitchSettingsTile(
    title: 'Dark Mode',
    settingKey: keyDarkMode,
    leading: IconWidget(
      color: Color(0xFF642ef3),
      icon: Icons.dark_mode,
    ),
    onChange: (_) {},
  );
}
