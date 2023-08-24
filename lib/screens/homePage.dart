import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenverse/screens/landingPage.dart';
import 'package:greenverse/screens/libraryPage.dart';
import 'package:greenverse/screens/loginPage.dart';
import 'package:greenverse/screens/SignupPage.dart';
import 'package:greenverse/screens/homePage.dart';
import 'package:greenverse/screens/gmartPage.dart';
import 'package:greenverse/screens/dashboardPage.dart';
import 'package:greenverse/screens/communityPage.dart';
import 'package:greenverse/screens/Profile_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  _changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List _pageList = [
    const DashboardPage(),
    const GmartPage(),
    CommunityPage(),
    LibraryPage() ,
    Profile_Page()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff2BC193),
        unselectedItemColor: Color(0xff3E363F),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Gmart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.diversity_3), label: 'Community'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book), label: 'library'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
        onTap: _changeIndex,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
