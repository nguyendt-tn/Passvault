import 'package:flutter/material.dart';
import 'package:passvault_app/app/values/app_colors.dart';

class NavItem {
  NavItem({required this.icon, required this.name});
  final IconData icon;
  final String name;

  static List<BottomNavigationBarItem> navItemList = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
      backgroundColor: AppColors.navItemColor,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.apps),
      label: 'Browse',
      backgroundColor: AppColors.navItemColor,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Setting',
      backgroundColor: AppColors.navItemColor,
    ),
  ];
}
