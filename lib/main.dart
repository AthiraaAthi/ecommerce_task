import 'package:ecommerce_new_task/controller/my_controller.dart';
import 'package:ecommerce_new_task/model/item_model.dart';
import 'package:ecommerce_new_task/view/home_screen/home_screen.dart';
import 'package:ecommerce_new_task/view/navigation_bar/navigation_screen.dart';
import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  // Hive.registerAdapter(itemModelAdapter());
  // var box = await Hive.openBox<itemModel>("New");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MyController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NavigationScreen(),
      ),
    );
  }
}
