import 'package:flutter/material.dart';
import 'crypto_helper.dart';

class DecryptPage extends StatefulWidget {
  @override
  _DecryptPageState createState() => _DecryptPageState();
}








class _DecryptPageState extends State<DecryptPage> {
  TextEditingController _controller = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("🔓 فك التشفير")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "أدخل النص المشفر",
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              child: Text("فك التشفير"),
              onPressed: () {
                setState(() {
                  result = CryptoHelper.decryptText(_controller.text);
                });
              },
            ),
            SizedBox(height: 15),
            SelectableText(result, style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}