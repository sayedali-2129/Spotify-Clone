import 'package:flutter/material.dart';
import 'package:spitify_clone/View/home_screen/home_screen.dart';
import 'package:spitify_clone/View/library_screen/library_screen.dart';
import 'package:spitify_clone/View/search_screen/search_screen.dart';
import 'package:spitify_clone/utils/color_constant/color_constant.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int selectedIndex = 0;
  List pages = [
    HomeSccreen(),
    SearchScreen(),
    LibraryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[selectedIndex],
        backgroundColor: ConstantColor.bgBlackColor,
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: ConstantColor.bgBlackColor,
            unselectedItemColor: ConstantColor.lightGrey,
            selectedItemColor: ConstantColor.textWhite,
            currentIndex: selectedIndex,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.my_library_music_outlined),
                  label: "Your Library")
            ]),
      ),
    );
  }
}
