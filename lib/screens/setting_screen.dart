import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'Settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // * Create the states for the switches and radio buttons
  bool isDarkMode = false;
  int gender = 1;
  String name = 'Carlos Carvajal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const CustomDrawer(),
      //* Recommended when we use a lot of widgets like inputs, switches, etc.
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Settings',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w300,
              ),
            ),
            const Divider(),
            SwitchListTile.adaptive(
              value: isDarkMode,
              title: const Text('Dark Mode'),
              onChanged: (value) {
                isDarkMode = value;
                setState(() {});
              },
            ),
            const Divider(),
            RadioListTile(
              value: 1,
              groupValue: gender,
              title: const Text('Male'),
              onChanged: (value) {
                gender = value ?? 1;
                setState(() {});
              },
            ),
            const Divider(),
            RadioListTile(
              value: 2,
              groupValue: gender,
              title: const Text('Female'),
              onChanged: (value) {
                gender = value ?? 2;
                setState(() {});
              },
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: name,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  helperText: 'Name of the person using the phone',
                ),
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
