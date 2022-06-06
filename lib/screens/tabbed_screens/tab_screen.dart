//Package imports
import 'package:edume/screens/tabbed_screens/downloads_screen.dart';
import 'package:edume/screens/tabbed_screens/settings_screen.dart';
import 'package:flutter/material.dart';

//Screen imports
import '../tabbed_screens/home_screen.dart';
import '../tabbed_screens/search_screen.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = 'tabs_screen';
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Object>> pages;

  int _selectedPageIndex = 0;

  @override
  void initState() {
    pages = [
      {
        'page': const HomeScreen(),
        'title': 'Home',
      },
      {
        'page': const SearchScreen(),
        'title': 'Search',
      },
      {
        'page': const DownloadScreen(),
        'title': 'Downloads',
      },
      {
        'page': const SettingScreen(),
        'title': 'Settings',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            label: 'Home',
            icon: Icon(Icons.house_outlined),
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            label: 'Search',
            icon: Icon(Icons.search),
            tooltip: 'Search',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            label: 'Downloads',
            icon: Icon(Icons.download_outlined),
            tooltip: 'Downloads',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            label: 'Settings',
            icon: Icon(Icons.settings_outlined),
            tooltip: 'Settings',
          ),
        ],
      ),
    );
  }
}
