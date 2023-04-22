import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_navigation_bar/tabs/favourites.dart';
import 'package:google_navigation_bar/tabs/hometab.dart';
import 'package:google_navigation_bar/tabs/person.dart';
import 'package:google_navigation_bar/tabs/search.dart';

class HomePage extends StatefulWidget {
  var selectedIndex;
  HomePage({super.key, required this.selectedIndex});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<String> _titles = const [
    'Home',
    'Favourites',
    'Search',
    'Person',
  ];

  List<Widget> _tabs = [];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
    _tabs = [
      HomeTab(selectedIndex: 0),
      FavouritesTab(selectedIndex: 1),
      SearchTab(selectedIndex: 2),
      PersonTab(selectedIndex: 3),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: _tabs[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 15),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GNav(
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              curve: Curves.easeOutExpo,
              gap: 10,
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 18,
              ),
              activeColor: Colors.black,
              tabBorder: Border.all(color: Colors.grey),
              tabActiveBorder: Border.all(),
              tabBorderRadius: 30,
              iconSize: 20,
              tabBackgroundColor: Colors.black.withOpacity(0.1),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Likes',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
