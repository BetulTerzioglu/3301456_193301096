import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mountain/navpages/bar_item_page.dart';
import 'package:mountain/navpages/home_page.dart';
import 'package:mountain/navpages/my_page.dart';
import 'package:mountain/navpages/search_page.dart';
import 'package:mountain/pages/detail_page.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
    //MainPage(),
  ];

  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });

  }
  int x = 2;
  void barTap(x){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
        (context) => const DetailPage(),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: pages[currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          unselectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          onTap: barTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey.withOpacity(0.8),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Home',),
              BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp), label: 'Pages'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person')
    ],
    ),

    );
  }
}

