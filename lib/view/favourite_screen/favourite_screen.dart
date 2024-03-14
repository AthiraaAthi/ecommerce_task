import 'package:ecommerce_new_task/utils/color_constant/color_constant.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: ColorConstant.blue,
            )),
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
