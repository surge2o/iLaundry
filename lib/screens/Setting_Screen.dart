import 'package:flutter/material.dart';
import 'package:test/screens/MyHomeScreen.dart';
import 'package:test/screens/goto_Screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                return_to(context, MyHomeScreen());
              },
              child: Text("Home"))
        ],
      ),
      appBar: AppBar(
        title: const Text("Settings"),
      ),
    );
  }
}
