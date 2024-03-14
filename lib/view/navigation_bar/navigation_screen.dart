import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_new_task/view/home_screen/home_screen.dart';
import 'package:ecommerce_new_task/view/profile_screen/profile_screen.dart';
import 'package:ecommerce_new_task/view/settings_screen/settings.dart';
import 'package:flutter/material.dart';

import '../../utils/color_constant/color_constant.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;
  List<Widget> Screens = [HomeScreen(), ProfileScreen(), SettingScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          index: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          color: ColorConstant.white,
          backgroundColor: ColorConstant.blue,
          items: [
            Icon(
              Icons.home,
              color: ColorConstant.blue,
              size: 30,
            ),
            Icon(
              Icons.person,
              color: ColorConstant.blue,
              size: 30,
            ),
            Icon(
              Icons.settings,
              color: ColorConstant.blue,
              size: 30,
            ),
          ]),
    );
  }
}
