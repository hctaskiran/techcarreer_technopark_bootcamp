import 'package:flutter/material.dart';
import 'package:techcarreer_technopark_bootcamp/pages/fav_page.dart';
import 'package:techcarreer_technopark_bootcamp/pages/home_page_page.dart';
import 'package:techcarreer_technopark_bootcamp/pages/settings_page.dart';

class ButtomNavBarTutor extends StatefulWidget {
  const ButtomNavBarTutor({Key? key}) : super(key: key);

  @override
  State<ButtomNavBarTutor> createState() => _ButtomNavBarTutorState();
}

class _ButtomNavBarTutorState extends State<ButtomNavBarTutor> {
  final String appBarTitle = 'Bottom Navigation Bar';
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pageList = [
    HomePagePage(),
    FavPage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarTitle)),
      body: pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(activeIcon: Icon(Icons.home, color: Colors.blue,) ,icon: Icon(Icons.home), label: 'Home Page'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Star', activeIcon: Icon(Icons.star, color: Colors.amber)),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}
