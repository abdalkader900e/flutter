import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(CryptoApp());
}

class CryptoApp extends StatefulWidget {
  @override
  _CryptoAppState createState() => _CryptoAppState();
}

class _CryptoAppState extends State<CryptoApp> {
  bool isDark = false;

  void toggleTheme() {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "تطبيق التشفير",
      theme: isDark ? ThemeData.dark() : ThemeData(primarySwatch: Colors.indigo),
      home: HomePage(toggleTheme: toggleTheme),
      debugShowCheckedModeBanner: false,
    );
  }
}