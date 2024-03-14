import 'package:ecommerce_new_task/utils/color_constant/color_constant.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.white,
        title: Text(
          "Favourites",
          style:
              TextStyle(color: ColorConstant.blue, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
