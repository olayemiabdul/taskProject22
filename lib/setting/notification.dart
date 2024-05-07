import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:todo_task_app/setting/iconwidget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SimpleSettingsTile(
        title: 'Notification',
        subtitle: 'Newsletter, App Updates',
        leading: IconWidget(
          color: Colors.redAccent,
          icon: Icons.notification_add,
        ),
        child: SettingsScreen(
          title: 'Notifications',
          children: [
            buildNews(),
            buildActivities(),
            buildAppUpdate(),
            buildNewsletter(),
          ],
        ),
      );
}

buildActivities() {
  final keyActivities = 'key-activities';
  return SwitchSettingsTile(
    title: 'Account Activities',
    settingKey: ' keyActivities',
    leading: IconWidget(
      icon: Icons.person,
      color: Colors.blueAccent,
    ),
  );
}

buildNews() {
  final keyNew = 'key-new';
  return SwitchSettingsTile(
    title: 'News For Everyone',
    settingKey: 'keyNew',
    leading: IconWidget(
      icon: Icons.message,
      color: Colors.blueAccent,
    ),
  );
}

buildNewsletter() {
  final keyNewletter = 'key-newletter';

  SwitchSettingsTile(
    title: 'Newsletter For Everyone',
    settingKey: 'keyNewletter',
    leading: IconWidget(
      icon: Icons.text_snippet,
      color: Colors.tealAccent,
    ),
  );
}

buildAppUpdate() {
  final keyAppupdate = 'key-update';

  SwitchSettingsTile(
    title: 'Update App',
    settingKey: ' keyAppupdate',
    leading: IconWidget(
      icon: Icons.app_settings_alt,
      color: Colors.yellowAccent,
    ),
  );
}
