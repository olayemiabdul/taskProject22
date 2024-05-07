import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:todo_task_app/setting/account_page.dart';
import 'package:todo_task_app/setting/headerPage.dart';
import 'package:todo_task_app/setting/iconwidget.dart';
import 'package:todo_task_app/setting/notification.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(24.0),
          children: [
            HeaderPage(),
            SettingsGroup(
              title: 'General',
              subtitle: 'Grouping other tile',
              children: [
                SizedBox.square(),
                AccountPage(),
                NotificationPage(),
                buildLogOut(),
                buildDeleteAccount(),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            SettingsGroup(
              title: 'FEEDBACK',
              subtitle: 'Send Your Feedback',
              children: [
                buildSendfeedback(context),
                buildSendReportBug(context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

buildSendfeedback(BuildContext context) {
  return SimpleSettingsTile(
      title: 'Send Feedback',
      subtitle: 'Talk to us',
      leading: IconWidget(
        icon: Icons.thumb_up,
        color: Colors.yellowAccent,
      ),
      onTap: () {});
}

buildSendReportBug(BuildContext context) {
  return SimpleSettingsTile(
      title: 'Report a Bug',
      subtitle: 'let get the app Better',
      leading: IconWidget(
        icon: Icons.bug_report,
        color: Colors.teal,
      ),
      onTap: () {});
}

buildLogOut() => SimpleSettingsTile(
    title: 'LogOut',
    subtitle: 'Logging out Here',
    leading: IconWidget(
      icon: Icons.logout,
      color: Colors.blueAccent,
    ),
    onTap: () {});

buildDeleteAccount() {
  return SimpleSettingsTile(
      title: 'Delete Account',
      subtitle: 'Delete account Here',
      leading: IconWidget(
        icon: Icons.delete,
        color: Colors.pink,
      ),
      onTap: () {});
}
//
//
//
//
// SwitchSettingsTile(
// title: 'DarkMode',
// settingKey: 'keyDarkMode',
// leading: IconWidget(
// icon: Icons.person,
// color: Colors.green,
// ),
// onChange: (value) {
// debugPrint('key-switch-dev-mod: $value');
// }),
// SimpleSettingsTile(
// title: 'front page',
// subtitle: 'first tile in the group',
// child: Column(
// children: [
// //on leads to the children page
// Icon(Icons.add),
// Text('Abdulllahi flutter guru'),
// // IconWidget(
// //   Colors.green,
// //   Icon(Icons.headphones),
// // ),
// ],
// ),
// leading: Icon(
// Icons.abc,
// ),
// ),
// SwitchSettingsTile(
// title: 'Developer Settings',
// settingKey: 'key-switch-dev-mode',
// onChange: (value) {
// debugPrint('key-switch-dev-mod: $value');
// },
// childrenIfEnabled: [
// CheckboxSettingsTile(
// leading: Icon(Icons.adb),
// settingKey: 'key-is-developer',
// title: 'Developer Mode',
// onChange: (value) {
// debugPrint('key-is-developer: $value');
// },
// ),
// SwitchSettingsTile(
// leading: Icon(Icons.usb),
// settingKey: 'key-is-usb-debugging',
// title: 'USB Debugging',
// onChange: (value) {
// debugPrint('key-is-usb-debugging: $value');
// },
// ),
// SimpleSettingsTile(
// title: 'Root Settings',
// subtitle: 'These settings is not accessible',
// enabled: false,
// )
// ],
// ),
// RadioSettingsTile(
// title: 'Preferred Sync Period',
// settingKey: 'key-radio-sync-period',
// selected: 0,
// values: <int, String>{
// 0: 'Never',
// 1: 'Daily',
// 7: 'Weekly',
// 15: 'Fortnight',
// 30: 'Monthly',
// },
// onChange: (value) {
// debugPrint('key-radio-sync-period: $value days');
// },
// ),
// DropDownSettingsTile(
// title: 'E-Mail View',
// settingKey: 'key-dropdown-email-view',
// selected: 2,
// values: <int, String>{
// 2: 'Simple',
// 3: 'Adjusted',
// 4: 'Normal',
// 5: 'Compact',
// 6: 'Squizzed'
// },
// onChange: (value) {
// debugPrint('key-dropdown-email-view: $value');
// },
// ),
