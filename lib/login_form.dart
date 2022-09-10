import 'package:flutter/material.dart';

const kTextField = TextStyle(fontSize: 20, color: Colors.blueGrey);

const kSubmitText = TextStyle(fontSize: 20, color: Colors.white);

class LoginForm extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  @override
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Form(
        key: formKey,
        child: Column(children: <Widget>[
          emailFormField(),
          passwordFormField(),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: submitButton(),
          )
        ]),
      ),
    );
  }

  Widget emailFormField() {
    return TextFormField(
      style: kTextField,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'อีเมล', hintText: 'กรอกอีเมล', icon: Icon(Icons.email)),
      // validator: (value) {
      //   return null;
      // },
      // onSaved: (String value) {
      //   email = value;
      // },
    );
  }

  Widget passwordFormField() {
    return TextFormField(
      style: kTextField,
      obscureText: true,
      decoration: InputDecoration(
          labelText: 'รหัสผ่าน',
          hintText: 'กรอกรหัสผ่าน',
          icon: Icon(Icons.lock)),
      // validator: (value) {
      //   if (value.length > 8) {
      //     return 'iรหัสผ่านต้องมากกว่า 8';
      //   }
      //   return null;
      // },
      // onSaved: (String value) {
      //   password = value;
      // },
    );
  }

  ElevatedButton submitButton() {
    return ElevatedButton(
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'เข้าสู่ระบบ',
            style: kSubmitText,
          ),
        ),
        onPressed: () {
          print('อีเมล: $email รหัสผ่าน: $password');
        });
  }
}
