import 'package:flutter/material.dart';
import 'package:instagram/screens/addpostscreen.dart';
import 'package:instagram/screens/favouritescreen.dart';
import 'package:instagram/screens/homeScreen.dart';
import 'package:instagram/screens/profilescreen.dart';
import 'package:instagram/screens/searchScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram/shared/colors.dart';

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
          _pageController.jumpToPage(value);
          setState(() {
            currentIndex = value;
          });
        },
        // currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
              color: currentIndex == 0
                  ? AppColors.selectedbottomNavColor
                  : AppColors.unSelectedbottomNavColor,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.search,
              color: currentIndex == 1
                  ? AppColors.selectedbottomNavColor
                  : AppColors.unSelectedbottomNavColor,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.add,
              color: currentIndex == 2
                  ? AppColors.selectedbottomNavColor
                  : AppColors.unSelectedbottomNavColor,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.star,
              color: currentIndex == 3
                  ? AppColors.selectedbottomNavColor
                  : AppColors.unSelectedbottomNavColor,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
              color: currentIndex == 4
                  ? AppColors.selectedbottomNavColor
                  : AppColors.unSelectedbottomNavColor,
            ),
            label: "",
          ),
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
