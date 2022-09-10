import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final List<String> myList = [
    "Neymar",
    "Ronaldo",
    "Messi",
    "Pele",
    "Chanatrip",
    "kaka",
    "sahra"
  ];
  List<Widget> mapWidgetList() {
    return myList.map((item) {
      return Material(
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: Text(
            item,
            style: TextStyle(fontSize: 20),
          ),
        ),
        elevation: 20,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Student List',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Student'),
          ),
          body: ListView(children: mapWidgetList()),
        ));
  }
}
