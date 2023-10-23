import 'package:exam/Screens/HomeScreen.dart';
import 'package:exam/Screens/SecondHomeScreen.dart';
import 'package:exam/Screens/ThirdHomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget{
  static const String routeName = "splash";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screen = [
     HomeScreen(),
     SecondHomeScreen(),
     ThirdHomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 50,
        selectedItemColor: const Color(0xff027A48),
        currentIndex: selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/home-05.png"),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/Icon1.png"),
            ),
            label: "Insights",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/calender.png"),
            ),
            label: "Topics",
          ),
        ],
      ),
    );
  }
}