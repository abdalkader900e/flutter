import 'package:flutter/material.dart';
import 'crypto_helper.dart';

class EncryptPage extends StatefulWidget {
  @override
  _EncryptPageState createState() => _EncryptPageState();
}















class _EncryptPageState extends State<EncryptPage> {
  TextEditingController _controller = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("🔒 التشفير")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "أدخل النص",
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              child: Text("تشفير"),
              onPressed: () {
                setState(() {
                  result = CryptoHelper.encryptText(_controller.text);
                });
              },
            ),
            SizedBox(height: 15),
            SelectableText(result, style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}