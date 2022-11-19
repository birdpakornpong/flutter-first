// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import './components/FoodMenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Navigator',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("บัญชีของฉัน"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            MoneyBox("ยอดคงเหลือ", 120000, Colors.lightBlue, 120)
          ]),
        ));
  }
}
