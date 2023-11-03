// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramproject/pages/my_profile_page.dart';
import 'package:instagramproject/pages/reels_page.dart';
import 'package:instagramproject/pages/search_page.dart';
import 'package:instagramproject/pages/upload_page.dart';
import 'package:instagramproject/pages/homepage_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    const MyHomePage(),
    const SearchPage(),
    const UploadPage(),
    const ReelsPage(),
    const IgInstagramPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,

//body

      body: _children[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        backgroundColor: Theme.of(context).colorScheme.background,
        fixedColor: Theme.of(context).colorScheme.primary,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
//icon 1

          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/home_choice.svg',
              height: 25,
              color: Theme.of(context).colorScheme.primary,
            ),
            icon: SvgPicture.asset(
              'assets/home_outlined.svg',
              height: 25,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: 'Search',
          ),

//icon 2

          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/search-icon_outlined.svg',
              height: 25,
              color: Theme.of(context).colorScheme.primary,
            ),
            icon: SvgPicture.asset(
              'assets/search-icon_outlined.svg',
              height: 23,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: 'Home',
          ),

//icon 3

          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/add fill.svg',
              height: 30,
              color: Theme.of(context).colorScheme.primary,
            ),
            icon: SvgPicture.asset(
              'assets/add_outlined.svg',
              height: 30,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: 'Home',
          ),

//icon 4

          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/Reels_filled.svg',
              height: 25,
              color: Theme.of(context).colorScheme.primary,
            ),
            icon: SvgPicture.asset(
              'assets/instagram-reels-outlined.svg',
              height: 25,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: 'Home',
          ),

//icon 5

          const BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                'https://i.pinimg.com/550x/c4/ab/eb/c4abebfe8f0682058c29d4ab28308648.jpg',
              ),
            ),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
