import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form Screen'),
        ),
        body: GestureDetector(
            onPanUpdate: (details) {
              if (details.delta.dx >= 15 || details.delta.dx <= -15) {
                print(details.delta.dx);
                Navigator.pop(context);
              }
            },
            child: Center(
              child: Text(
                'ลากนิ้วเพื่อเปลี่ยนหน้าจอ',
                style: TextStyle(fontSize: 30),
              ),
            )));
  }
}
