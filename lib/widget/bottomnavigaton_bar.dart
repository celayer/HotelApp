import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo_hotel/view/class_hote_info.dart';
import 'package:flutter_application_1/demo_hotel/view/class_hotel_detail.dart';
import 'package:flutter_application_1/demo_hotel/view/class_hotel_home.dart';

class BottomNavigationLearnBar extends StatefulWidget {
  const BottomNavigationLearnBar({super.key});

  @override
  State<BottomNavigationLearnBar> createState() =>
      _BottomNavigationLearnBarState();
}

class _BottomNavigationLearnBarState extends State<BottomNavigationLearnBar> {
  int _selectedIndex = 0;

  List<Widget> _bottomList = [
    ClassHotelHome(),
    HotelDetail(),
    ClassOtelInfo(),
    HotelDetail(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0 ? AppBar() : null,
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          currentIndex: _selectedIndex,
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_added_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_outline), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          ]),
      body: _bottomList.elementAt(_selectedIndex),
    );
  }
}
