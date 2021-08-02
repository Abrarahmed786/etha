import 'package:etha/pages/home.dart';
import 'package:etha/pages/recent.dart';
import 'package:etha/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Gnav extends StatefulWidget {
  @override
  State<Gnav> createState() => _GnavState();
}

class _GnavState extends State<Gnav> {
  int _selectedIndex = 0;
  final _pageOption = [Home(), Recent(), Search()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'images/logoc.png',
              height: 70,
            ),
            Text(
              'Trending',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            CircleAvatar(
              child: Image.asset('images/person.png'),
            ),
          ],
        ),
      ),
      body: _pageOption[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300],
              hoverColor: Colors.grey[100],
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 200),
              tabBackgroundColor: Colors.grey[100],
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.local_fire_department_sharp,
                  iconColor: Colors.pinkAccent,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.contacts_outlined,
                  iconColor: Colors.pinkAccent,
                  text: 'Category',
                ),
                GButton(
                  icon: Icons.search_rounded,
                  iconColor: Colors.pinkAccent,
                  text: 'Search',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (int index) {
                setState(
                  () {
                    _selectedIndex = index;
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
