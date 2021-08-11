import 'package:flutter/material.dart';

import 'dashbordPage.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var seletedItem = 0;

  List childen = [
    DashbordPage(),
    DashbordPage(),
    DashbordPage(),
    DashbordPage(),
    DashbordPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: childen[seletedItem],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black54,
        selectedItemColor: Colors.pink[700],
        iconSize: 27.0,
        currentIndex: seletedItem,
        unselectedItemColor: Colors.grey[400],
        unselectedLabelStyle: TextStyle(
          color: Colors.black54,
        ),
        onTap: (currIndex) {
          setState(() {
            seletedItem = currIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black54,
            icon: Icon(Icons.home),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink[700],
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black54,
            icon: Icon(Icons.search),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink[700],
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black54,
            icon: Icon(Icons.camera_alt),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink[700],
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black54,
            icon: Icon(Icons.person_outline),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink[700],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
