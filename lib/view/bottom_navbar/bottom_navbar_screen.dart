import 'package:flutter/material.dart';

import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/view/comingsoon_screen/comingsoon_screen.dart';
import 'package:netflix_clone/view/download_screen/download_screen.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/more_screen/more_screen.dart';
import 'package:netflix_clone/view/search_screen/seach_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int _selectedIndex = 0;
  final List<Widget> myscreen = [
    HomeScreen(),
    SearchScreen(),
    ComingsoonScreen(),
    DownloadScreen(),
    MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: myscreen[_selectedIndex],
        backgroundColor: ColorConstants.MainBlack,
        bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 10,
            unselectedFontSize: 10,
            backgroundColor: ColorConstants.MainBlack,
            onTap: (value) {
              _selectedIndex = value;

              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: ColorConstants.Mainwhite,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: ColorConstants.MainBlack,
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_library),
                label: "Coming Soon",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: "Downloads"),
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More")
            ]));
  }
}
