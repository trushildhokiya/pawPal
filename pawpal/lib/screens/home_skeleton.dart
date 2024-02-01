import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pawpal/screens/home.dart';
import 'package:pawpal/screens/profile.dart';
import 'package:pawpal/screens/search.dart';
import 'package:pawpal/screens/services.dart';
import 'package:pawpal/screens/store.dart';
import 'package:pawpal/utils/constants.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeSkeletonPage extends StatefulWidget {
  const HomeSkeletonPage({super.key});

  @override
  State<HomeSkeletonPage> createState() => _HomeSkeletonPageState();
}

class _HomeSkeletonPageState extends State<HomeSkeletonPage> {
  var _currentIndex = 0;
  final pages = <Widget>[
    HomePage(),
    ServicesPage(),
    StorePage(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          // Home
          SalomonBottomBarItem(
            icon: Icon(LucideIcons.home),
            title: Text(
              'Home',
              style: kButtonTextStyle.copyWith(
                  fontWeight: FontWeight.w600, color: kBrown),
            ),
            selectedColor: kYellowGold,
          ),

          // Services
          SalomonBottomBarItem(
            icon: Icon(LucideIcons.briefcase),
            title: Text(
              'Services',
              style: kButtonTextStyle.copyWith(
                  fontWeight: FontWeight.w600, color: kBrown),
            ),
            selectedColor: kYellowGold,
          ),

          // store

          SalomonBottomBarItem(
              icon: Icon(LucideIcons.store),
              title: Text(
                "Store",
                style: kButtonTextStyle.copyWith(
                    fontWeight: FontWeight.w600, color: kBrown),
              )),

          // Search
          SalomonBottomBarItem(
            icon: Icon(LucideIcons.search),
            title: Text(
              'Search',
              style: kButtonTextStyle.copyWith(
                  fontWeight: FontWeight.w600, color: kBrown),
            ),
            selectedColor: kYellowGold,
          ),

          // Profile
          SalomonBottomBarItem(
            icon: Icon(LucideIcons.userCircle),
            title: Text(
              'Profile',
              style: kButtonTextStyle.copyWith(
                  fontWeight: FontWeight.w600, color: kBrown),
            ),
            selectedColor: kYellowGold,
          ),

          // Social
        ],
      ),
    );
  }
}
