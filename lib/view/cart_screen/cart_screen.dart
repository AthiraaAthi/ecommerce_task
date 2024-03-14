import 'package:flutter/material.dart';

import '../../utils/color_constant/color_constant.dart';

class MyCart extends StatefulWidget {
  const MyCart(
      {super.key,
      required this.image,
      required this.title,
      required this.price});
  final String image;
  final String title;
  final String price;

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int count = 0;
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          decoration: BoxDecoration(color: ColorConstant.white, boxShadow: [
            BoxShadow(
              color: ColorConstant.grey,
              blurRadius: 4,
            )
          ]),
          height: 150,
          width: 380,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(widget.image),
                          fit: BoxFit.cover)),
                  height: 120,
                  width: 120,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "\$" + widget.price,
                      style: TextStyle(fontSize: 20, color: ColorConstant.blue),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          count++;
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.add,
                          size: 30,
                        )),
                    Text(
                      count > 0 ? "${count}" : "0",
                      style: TextStyle(fontSize: 20),
                    ),
                    IconButton(
                        onPressed: () {
                          count--;
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.remove,
                          size: 30,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
