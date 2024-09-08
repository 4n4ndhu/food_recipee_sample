import 'package:flutter/material.dart';
import 'package:food_recipee_sample/utils/constants/color_constants.dart';
import 'package:food_recipee_sample/view/bookmark_screen/bookmark_screen.dart';
import 'package:food_recipee_sample/view/home_screen/home_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List screens = [
    HomeScreen(),
   BookmarkScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selected],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CircleAvatar(
        backgroundColor: ColorConstants.primaryColor,
        child: Text(
          "+",
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selected,
          onTap: (value) {
            selected = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.bookmark),
                icon: Icon(
                  Icons.bookmark_outline,
                ),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.notifications),
                icon: Icon(
                  Icons.notifications_outlined,
                ),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.person),
                icon: Icon(
                  Icons.person_outline,
                ),
                label: ""),
          ]),
    );
  }
}
