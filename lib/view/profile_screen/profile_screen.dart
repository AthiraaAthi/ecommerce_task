import 'package:flutter/material.dart';

import '../../utils/color_constant/color_constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstant.white,
        title: Text(
          "Profile",
          style:
              TextStyle(color: ColorConstant.blue, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
