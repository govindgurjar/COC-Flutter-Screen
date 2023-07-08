import 'package:flutter/material.dart';
import 'package:flutter_ui_july05/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon App',
      home: NavigationBar(),
    );
  }
}

class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key});

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int currentPage = 0;
  final screens = [
    HomePage(),
    // SearchPage(),
    // NotificationPage(),
    // ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: currentPage == 0
                ? Icon(
                    Icons.home,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                  ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: currentPage == 1
                ? Icon(
                    Icons.search,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.search_outlined,
                    color: Colors.grey,
                  ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: currentPage == 2
                ? Icon(
                    Icons.person_outlined,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.person_outlined,
                    color: Colors.grey,
                  ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: currentPage == 3
                ? Icon(
                    Icons.menu,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.menu,
                    color: Colors.grey,
                  ),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}
