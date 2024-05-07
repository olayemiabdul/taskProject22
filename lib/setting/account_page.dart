import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:todo_task_app/setting/iconwidget.dart';

class AccountPage extends StatelessWidget {
  final keyLocation = 'key-location';
  final keyLanguage = 'key-language';
  final keyPassword = 'key-password';

  @override
  Widget build(BuildContext context) => SimpleSettingsTile(
        title: 'Account Settings',
        subtitle: 'Privacy, Security, language',
        leading: IconWidget(
          icon: Icons.logout,
          color: Colors.blueAccent,
        ),
        child: SettingsScreen(
          title: 'Account Settings',
          children: [
            buildlanguage(),
            buildLocation(),
            buildpassword(),
            buildPrivacy(context),
            buildSecurity(context),
            buildAccountInfo(context),
          ],
        ),
      );
}

buildpassword() {
  final keyPassword = 'key-password';
  return TextInputSettingsTile(
    title: 'Password',
    settingKey: keyPassword,
    initialValue: 'Nigeria',
    keyboardType: TextInputType.emailAddress,
    obscureText: true,
    validator: (password) => password != null && password.length >= 6
        ? null
        : 'Enter atleast 6 Characters',
  );
}

buildPrivacy(BuildContext context) => SimpleSettingsTile(
      title: 'Privacy',
      subtitle: 'privacy settings',
      leading: IconWidget(
        icon: Icons.lock,
        color: Colors.amber,
      ),
      //onTap: () {},
    );
buildSecurity(BuildContext context) {
  return SimpleSettingsTile(
    title: 'Security',
    subtitle: ' advanced security settings.',
    leading: IconWidget(
      icon: Icons.security,
      color: Colors.blueGrey,
    ),
    //onTap: () {},
  );
}

buildAccountInfo(BuildContext context) => SimpleSettingsTile(
      title: 'Account Information',
      subtitle: 'More, advanced settings.',
      leading: IconWidget(
        icon: Icons.text_snippet,
        color: Colors.brown,
      ),
      //onTap: () {},
    );
buildLocation() {
  final keyLocation = 'key-location';
  return TextInputSettingsTile(
    title: 'Location',
    settingKey: keyLocation,
    initialValue: 'Nigeria',
    keyboardType: TextInputType.emailAddress,
  );
}

buildlanguage() {
  final keyLanguage = 'key-language';
  return DropDownSettingsTile(
    title: 'Language',
    settingKey: keyLanguage,
    selected: 2,
    values: <int, String>{
      2: 'Yoruba',
      3: 'Ebira',
      4: 'Hausa',
      5: 'Tiv',
      6: 'Indi',
      7: 'Igala'
    },
  );
}
