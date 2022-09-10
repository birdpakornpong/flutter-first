import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

const kTextStyle =
    TextStyle(fontSize: 40, color: Colors.grey, fontWeight: FontWeight.bold);

class _HomeScreenState extends State<HomeScreen> {
  int _itemIndex = 0;
  List<Widget> widgetList = [
    Center(
      child: Text(
        'โฮม',
        style: kTextStyle,
      ),
    ),
    Center(
      child: Text(
        'กราฟ',
        style: kTextStyle,
      ),
    ),
    Center(
      child: Text(
        'ค้นหา',
        style: kTextStyle,
      ),
    ),
    Center(
      child: Text(
        'เกี่ยวกับ',
        style: kTextStyle,
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: widgetList.elementAt(_itemIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(label: 'โฮม', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'กราฟ', icon: Icon(Icons.graphic_eq)),
          BottomNavigationBarItem(label: 'ตั้งค่า', icon: Icon(Icons.settings)),
          BottomNavigationBarItem(label: 'เกี่ยวกับ', icon: Icon(Icons.call)),
        ],
        currentIndex: _itemIndex,
        onTap: (index) {
          setState(() {
            _itemIndex = index;
            print(index);
          });
        },
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.tealAccent,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
