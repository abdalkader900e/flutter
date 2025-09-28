import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final VoidCallback toggleTheme;
  SettingsPage({required this.toggleTheme});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("⚙ الإعدادات")),
      body: Center(
        child: ElevatedButton.icon(
          icon: Icon(Icons.brightness_6),
          label: Text("تبديل الوضع الداكن/الفاتح"),
          onPressed: toggleTheme,
        ),
      ),
    );
  }
}








