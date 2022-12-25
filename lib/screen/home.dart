import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sisma/datatbase/db_helper.dart';

import 'screens.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const String prefSelectedIndexKey = 'selectedTab';
  static List<Widget> pages = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const WishScreen(),
  ];

  @override
  void initState() {
    super.initState();
    DBHelper();
    getCurrentIndex();
  }

  void getCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(prefSelectedIndexKey)) {
      setState(() {
        final index = prefs.getInt(prefSelectedIndexKey);
        if (index != null) {
          _selectedIndex = index;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home')),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: ConvexAppBar(
        initialActiveIndex: _selectedIndex,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.person, title: 'Mahasiswa'),
          TabItem(icon: Icons.drafts, title: 'Wishlist'),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          saveCurrentIndex();
        },
      ),
    );
  }

  void saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(prefSelectedIndexKey, _selectedIndex);
  }
}
