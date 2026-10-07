import 'package:flutter/material.dart';
import "package:flutter_application_1/Screans/category_screan.dart";
import 'package:flutter_application_1/Screans/profileScrean/profile_screan.dart';
import 'HomeScrean.dart';

class MainScrean extends StatefulWidget {
  const MainScrean({super.key});

  @override
  State<MainScrean> createState() => _MainScreanState();
}

class _MainScreanState extends State<MainScrean> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    CategoryScrean(),
    ProfileScrean()
    ];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xFF54408C),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "category"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          
        ],
      ),
    );
  }
}
