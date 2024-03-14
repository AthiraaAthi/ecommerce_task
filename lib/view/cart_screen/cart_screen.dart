import 'package:flutter/material.dart';

import '../../utils/color_constant/color_constant.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

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
          "MyCart",
          style:
              TextStyle(color: ColorConstant.blue, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
