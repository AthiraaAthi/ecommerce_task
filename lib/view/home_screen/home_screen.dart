import 'package:ecommerce_new_task/controller/my_controller.dart';
import 'package:ecommerce_new_task/model/my_model.dart';
import 'package:ecommerce_new_task/utils/color_constant/color_constant.dart';
import 'package:ecommerce_new_task/view/home_screen/homescreen_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SampleApi sampleApiobj = SampleApi();
  @override
  void initState() {
    // TODO: implement initState
    fetchdata();
    super.initState();
  }

  Future<void> fetchdata() async {
    await Provider.of<MyController>(context, listen: false).fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final MyControllerobj = Provider.of<MyController>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstant.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
                color: ColorConstant.blue,
              ))
        ],
        title: Text(
          "Lets shop",
          style:
              TextStyle(fontWeight: FontWeight.w800, color: ColorConstant.blue),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: MyControllerobj.sampleApiobj.products?.length,
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 270,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => HomeScreenWidget(
                  productName:
                      MyControllerobj.sampleApiobj.products?[index].title ?? "",
                  company:
                      MyControllerobj.sampleApiobj.products?[index].brand ?? "",
                  image:
                      MyControllerobj.sampleApiobj.products?[index].thumbnail ??
                          "",
                  price: MyControllerobj.sampleApiobj.products?[index].price
                          .toString() ??
                      "",
                )),
      ),
    );
  }
}
