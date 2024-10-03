import 'package:downloader_app/screens/settings_screen.dart';
import 'package:downloader_app/widgets/bottom_navigation.dart';
import 'package:downloader_app/widgets/history/history_widget.dart';
import 'package:downloader_app/widgets/home/home_widget.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedPage = 0;
  final _pagesTitle = ["Tiktok Save", "History"];
  final _pages = [
    const HomeWidget(),
    const HistoryWidget(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _setPage(int currentPage) {
    setState(() {
      _selectedPage = currentPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pagesTitle[_selectedPage],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            tooltip: "Settings",
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute<void>(builder: (BuildContext context) {
                return const SettingsScreen();
              }),
            ),
          )
        ],
      ),
      body: IndexedStack(
        index: _selectedPage,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigation(
        setPage: _setPage,
      ),
    );
  }
}
