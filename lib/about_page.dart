import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ℹ حول التطبيق")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          "تطبيق بسيط للتشفير وفك التشفير باستخدام AES.\n"
              "✔ تم تطويره بفريمورك Flutter\n"
              "✔ يستخدم مكتبة encrypt\n"
              "✔  كمشروع جامعي للتوضيح والمناقشة",
          style: TextStyle(fontSize: 18, height: 1.6),
        ),
      ),
    );
  }
}