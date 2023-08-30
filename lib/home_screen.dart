import 'package:flutter/material.dart';

import 'main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Theme Changer')),
      body: Center(
        child: Switch(
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;

              // changes the theme mode of the app
              if (_value) {
                MainApp.of(context)?.changeTheme(ThemeMode.dark);
              } else {
                MainApp.of(context)?.changeTheme(ThemeMode.light);
              }
            });
          },
        ),
      ),
    );
  }
}
