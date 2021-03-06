import 'package:education_app/components/bottomNavigationBar.dart';
import 'package:education_app/screen/bottomTabs/homeTab.dart';
import 'package:education_app/screen/bottomTabs/placeholderTab.dart';
import 'package:flutter/material.dart';
import 'package:education_app/utils/Theme.dart' as AppTheme;

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedTab = 2;

  final _tabs = [
    PlaceholderTab(icon: "assets/images/bookmark.svg"),
    PlaceholderTab(icon: "assets/images/notification.svg"),
    HomeTab(),
    PlaceholderTab(icon: "assets/images/controls.svg"),
    PlaceholderTab(icon: "assets/images/user.svg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _tabs[_selectedTab],
        bottomNavigationBar: BottomNav(
          index: _selectedTab,
          labelStyle: LabelStyle(showOnSelect: true),
          iconStyle: IconStyle(onSelectColor: const Color(0xFFFF9233)),
          items: [
            BottomNavItem("assets/images/bookmark.svg", label: 'bookmark'),
            BottomNavItem("assets/images/notification.svg",
                label: 'notification'),
            BottomNavItem("assets/images/home.svg", label: 'home'),
            BottomNavItem("assets/images/controls.svg", label: 'Settings'),
            BottomNavItem("assets/images/user.svg", label: 'user')
          ],
          onTap: (index) {
            setState(() {
              _selectedTab = index;
            });
          },
        ));
  }
}
