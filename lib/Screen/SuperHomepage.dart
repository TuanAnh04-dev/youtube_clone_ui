// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:youtube_clone/Screen/HomePage.dart';
import 'package:youtube_clone/Screen/LibraryScreen.dart';
import 'package:youtube_clone/Screen/ShortScreen.dart';
import 'package:youtube_clone/Screen/SubcriptScreen.dart';

class SuperHomePage extends StatefulWidget {
  const SuperHomePage({super.key});

  @override
  State<SuperHomePage> createState() => _SuperHomePageState();
}

class _SuperHomePageState extends State<SuperHomePage> {
  int selectIndex = 0;
  PageController pageController = PageController();

  pageChange(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  void onTapped(int index) {
    setState(() {
      selectIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) => pageChange(value),
        children: const [
          HomePage(),
          ShortScreen(),
          SubcriptScreen(),
          LibraryScreen(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.show_chart_sharp, color: Colors.black), label: "Short"),
            BottomNavigationBarItem(icon: Icon(Icons.subscriptions_outlined, color: Colors.black), label: "Subscriptions"),
            BottomNavigationBarItem(icon: Icon(Icons.video_library, color: Colors.black), label: "Library"),
          ],
          currentIndex: 0,
          unselectedItemColor: const Color.fromRGBO(168, 168, 168, 1),
          selectedFontSize: 12,
          onTap: onTapped,
        ),
      ),
    );
  }
}
