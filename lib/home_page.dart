import 'package:flutter/material.dart';
import 'encrypt_page.dart';
import 'decrypt_page.dart';
import 'about_page.dart';
import 'setting_page.dart';

class HomePage extends StatelessWidget {
  final VoidCallback toggleTheme;
  HomePage({required this.toggleTheme});

  Widget buildButton(BuildContext ctx, String title, IconData icon, Widget page) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 220,
      child: ElevatedButton.icon(
        icon: Icon(icon),
        label: Text(title, style: TextStyle(fontSize: 18)),
        onPressed: () => Navigator.push(ctx, MaterialPageRoute(builder: (_) => page)),
      ),
    );
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("🔐 تطبيق التشفير")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              child: Center(
                child: Text("القائمة الرئيسية", style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("تشفير"),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => EncryptPage())),
            ),
            ListTile(
              leading: Icon(Icons.lock_open),
              title: Text("فك التشفير"),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DecryptPage())),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("حول التطبيق"),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AboutPage())),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("الإعدادات"),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SettingsPage(toggleTheme: toggleTheme))),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "مرحباً بك 👋\nاختر العملية من القائمة الجانبية",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.indigo),
        ),
      ),
    );
  }
}