import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  final void Function(int) setPage;

  const BottomNavigation({super.key, required this.setPage});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      widget.setPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.grey.shade200,
      surfaceTintColor: Colors.grey.shade200,
      onDestinationSelected: (int index) => _onItemTapped(index),
      indicatorColor: Colors.purple.withOpacity(0.2),
      selectedIndex: _currentIndex,
      destinations: const [
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_filled),
          label: "Home",
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.history),
          icon: Icon(Icons.history_outlined),
          label: "History",
        ),
      ],
    );
  }
}
