import 'package:hive_flutter/hive_flutter.dart';

import '../../model/item_model.dart';

class CartController {
  incrementQuantity(var itemkey, itemModel item) {
    int qty = item.quantity;
    qty++;
  }

  decrementQuantity(var itemkey, itemModel item) {
    int qty = item.quantity;
    qty--;
  }

  deleteItem(var itemKey) {}
}
