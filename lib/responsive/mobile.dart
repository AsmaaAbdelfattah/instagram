import 'package:flutter/material.dart';
import 'package:instagram/screens/addpostscreen.dart';
import 'package:instagram/screens/favouritescreen.dart';
import 'package:instagram/screens/homeScreen.dart';
import 'package:instagram/screens/profilescreen.dart';
import 'package:instagram/screens/searchScreen.dart';
import 'package:flutter/cupertino.dart';

class MobileUI extends StatefulWidget {
  const MobileUI({super.key});

  @override
  State<MobileUI> createState() => _MobileUIState();
}

class _MobileUIState extends State<MobileUI> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.add), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.star), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: ""),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: [
          HomeScreen(),
          SearchScreen(),
          AddPostScreen(),
          FavouriteScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
