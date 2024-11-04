import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatefulWidget {
  static List<Map<String, dynamic>> screens = [
    {
      'name': 'Home',
      'icon': Icon(Icons.home_filled),
    },
    {
      'name': 'Events',
      'icon': Icon(Icons.home_filled),
    },
    {
      'name': 'Community',
      'icon': Icon(Icons.home_filled),
    },
    {
      'name': 'Manage',
      'icon': Icon(Icons.home_filled),
    }
  ];

  const AppBottomNavigationBar({super.key});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      items: AppBottomNavigationBar.screens.map(
        (screen) {
          return BottomNavigationBarItem(
            key: ValueKey('bottomNavigationBarItem_${screen['name']}'),
            icon: screen['icon'],
            label: screen['name'],
          );
        },
      ).toList(),
    );
  }
}
