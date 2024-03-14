import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
part 'item_model.g.dart';

@HiveType(typeId: 1) //for type adapters
class itemModel {
  @HiveField(1)
  String title;
  @HiveField(2)
  String des;
  @HiveField(3)
  String image;
  @HiveField(4)
  num price;
  @HiveField(5)
  bool isCarted;
  @HiveField(6)
  int quantity;
  itemModel(
      {required this.title,
      required this.des,
      required this.image,
      required this.price,
      this.isCarted = false,
      this.quantity = 0});
}
